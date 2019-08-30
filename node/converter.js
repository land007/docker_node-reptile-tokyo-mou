
var getDate = function(sdate) {
	let dates = sdate.split('.');
	if(dates.length == 3) {
		return dates[2] + '-' + dates[1] + '-' + dates[0];
	}
	return sdate;
}

let converter = function(list) {
	let json = [];
	for(let i = 1; i < list.length; i++) {
//		console.log(i);
		json[i - 1] = {};
		json[i - 1]["id"] = list[i][0];
		json[i - 1]["date"] = getDate(list[i][1]);
		json[i - 1]["place"] = list[i][2];
		json[i - 1]["ship_imo_number"] = list[i][3];
		json[i - 1]["ship_name"] = list[i][4];
		json[i - 1]["callsign"] = list[i][5];
		json[i - 1]["mmsi"] = list[i][6];
		json[i - 1]["flag"] = list[i][7];
		json[i - 1]["deficiencies"] = list[i][8];
		json[i - 1]["detention"] = list[i][9];
		if(!(list[i][10] instanceof Array)) {
			json[i - 1]["srpattoi"] = list[i][10];
		}
		let have_info0 = false;
		let have_info1 = false;
		let have_info2 = false;
		let have_infos = false;
		let list_index = 0;
		for(let k = 0; k < list[i].length; k++) {
			if(list[i][k] instanceof Array) {
				list_index = k;
				break;
			}
		}
		for(let j = 0; j < list[i][list_index].length; j++) {
			if(have_info0) {
				json[i - 1]["authority"] = list[i][list_index][j][1];
				json[i - 1]["port"] = list[i][list_index][j][2];
				json[i - 1]["lnspection_type"] = list[i][list_index][j][3];
				have_info0 = false;
			}
			if(have_info1) {
				json[i - 1]["classification_society"] = list[i][list_index][j][4];
				json[i - 1]["ship_type"] = list[i][list_index][j][6];
				json[i - 1]["date_keel_laid"] = list[i][list_index][j][7];
				json[i - 1]["deadweight"] = list[i][list_index][j][8];
				json[i - 1]["tonnage"] = list[i][list_index][j][9];
				have_info1 = false;
			}
			if(have_info2) {
				json[i - 1]["company_name"] = list[i][list_index][j][0];
				json[i - 1]["company_imo_number"] = list[i][list_index][j][1];
				json[i - 1]["residence"] = list[i][list_index][j][2];
				json[i - 1]["registered"] = list[i][list_index][j][3];
				json[i - 1]["phone"] = list[i][list_index][j][4];
				json[i - 1]["fax"] = list[i][list_index][j][5];
				json[i - 1]["email"] = list[i][list_index][j][6];
				have_info2 = false;
			}
			if(have_infos) {
				if(json[i - 1]["infos"] === undefined) {
					json[i - 1]["infos"] = [];
				}
				json[i - 1]["infos"][json[i - 1]["infos"].length] = {"nature": list[i][list_index][j][2], "ground_for_detention": list[i][list_index][j][3]};
			}
			if(list[i][list_index][j][0] == "Date" && list[i][list_index][j][1] == "Authority") {
				have_info0 = true;
			}
			if(list[i][list_index][j][0] == "Ship Name" && list[i][list_index][j][1] == "IMO number") {
				have_info1 = true;
			}
			if(list[i][list_index][j][4] == "Phone" && list[i][list_index][j][5] == "Fax") {
				have_info2 = true;
			}
			if(list[i][list_index][j][2] == "Nature" && list[i][list_index][j][3] == "Ground for detention") {
				have_infos = true;
			}
		}
	}
	return json;
}

module.exports = converter;