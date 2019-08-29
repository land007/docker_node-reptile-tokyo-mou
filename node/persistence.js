const mysql = require('mysql');

const host = process.env['DbHost'] || '0.0.0.0';
const port = process.env['DbPort'] || '3306';
const user = process.env['DbUsername'] || 'root';
const password = process.env['DbPassword'] || '';
const database = process.env['Database'] || 'test';

var pool  = mysql.createPool({
	connectionLimit : 10,
	host            : host,
	port            : port,
	user            : user,
	password        : password,
	database        : database
});
//, `code`, `nature`, `ground_for_detention`
let persistence = function(list) {//, `authority`, `port`
	if(host == '0.0.0.0') {
		return;
	}
	let sql = 'INSERT INTO `b_occi` (`occi_id`, `date`, `place`, `imo_number`, `ship_name`, `callsign`, `mmsi`, `flag`, `deficiencies`, `detention`, `classification_society`, `srpattoi`, `type`, `date_keel_laid`, `deadweight`, `tonnage`, `name`, `residence`, `registered`, `phone`, `fax`, `email`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);';
	console.log('dbSave'); 
	pool.getConnection(function(err, connection) {
		console.log('get connection');
		if (err) throw err;
		console.log('query sql = ' + sql);
		for(let i in list) {
//			console.log('i', i);
			let obj = list[i];
//			console.log('obj', obj);
			let parameter = [obj.id, obj.date, obj.place, obj.imo_number, obj.ship_name, obj.callsign, obj.mmsi, obj.flag, obj.deficiencies, obj.detention, obj.classification_society, obj.srpattoi, obj.type, obj.date_keel_laid, obj.deadweight, obj.tonnage, obj.name, obj.residence, obj.registered, obj.phone, obj.fax, obj.email];
//			console.log(parameter);
			var query = connection.query(sql, parameter,
				function (error, results, fields) {
					console.log('save');
					if (error) throw error;
					console.log('save ok : ', results);
			});
			console.log('query.sql = ' + query.sql);
		}
	});
};

module.exports = persistence;