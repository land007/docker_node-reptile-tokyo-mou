
let converter = function(list) {
	let json = [];
	for(let i = 1; i < list.length; i++) {
//		console.log(i);
		json[i - 1] = {
			"Date": list[i][1], 
			"Place": list[i][2], 
			"IMO_number": list[i][3], 
			"MMSI": list[i][6], 
			"Detention": list[i][9], 
			"Infos":[]
		};
		let have = false;
		let list_index = 0;
		for(let k = 0; k < list[i].length; k++) {
			if(list[i][k] instanceof Array) {
				list_index = k;
				break;
			}
		}
		for(let j = 1; j < list[i][list_index].length; j++) {
			if(have) {
				json[i - 1]["Infos"][json[i - 1]["Infos"].length] = {"Nature": list[i][list_index][j][2], "Ground_for_detention": list[i][list_index][j][3]};
			}
			if(list[i][list_index][j][2] == "Nature" && list[i][list_index][j][3] == "Ground for detention") {
				have = true;
			}
		}
	}
	return json;
}

module.exports = converter;