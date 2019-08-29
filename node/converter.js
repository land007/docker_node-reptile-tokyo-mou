
let converter = function(list) {
	let json = [];
	for(let i = 1; i < list.length; i++) {
//		console.log(i);
		json[i - 1] = {};
		json[i - 1]["id"] = list[i][0];
		json[i - 1]["date"] = list[i][1];
		json[i - 1]["place"] = list[i][2];
		json[i - 1]["imo_number"] = list[i][3];
		json[i - 1]["ship_name"] = list[i][4];
		json[i - 1]["callsign"] = list[i][5];
		json[i - 1]["mmsi"] = list[i][6];
		json[i - 1]["flag"] = list[i][7];
		json[i - 1]["deficiencies"] = list[i][8];
		json[i - 1]["detention"] = list[i][9];
		if(!(list[i][10] instanceof Array)) {
			json[i - 1]["srpattoi"] = list[i][10];
		}
		let have_info = false;
		let have_infos = false;
		let list_index = 0;
		for(let k = 0; k < list[i].length; k++) {
			if(list[i][k] instanceof Array) {
				list_index = k;
				break;
			}
		}
		for(let j = 1; j < list[i][list_index].length; j++) {
			if(have_info) {
				json[i - 1]["classification"] = list[i][list_index][j][4];
				json[i - 1]["type"] = list[i][list_index][j][5];
				json[i - 1]["date_keel_laid"] = list[i][list_index][j][6];
				json[i - 1]["deadweight"] = list[i][list_index][j][8];
				json[i - 1]["tonnage"] = list[i][list_index][j][9];
				have_info = false;
			}
			if(have_infos) {
				if(json[i - 1]["infos"] === undefined) {
					json[i - 1]["infos"] = [];
				}
				json[i - 1]["infos"][json[i - 1]["infos"].length] = {"nature": list[i][list_index][j][2], "ground_for_detention": list[i][list_index][j][3]};
			}
			if(list[i][list_index][j][0] == "Ship Name" && list[i][list_index][j][1] == "IMO number") {
				have_info = true;
			}
			if(list[i][list_index][j][2] == "Nature" && list[i][list_index][j][3] == "Ground for detention") {
				have_infos = true;
			}
		}
	}
	return json;
}

module.exports = converter;