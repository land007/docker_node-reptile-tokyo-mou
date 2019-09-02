const mysql = require('mysql');

const host = process.env['DbHost'] || 'rm-2zew3g96vzbn5648cqo.mysql.rds.aliyuncs.com';
const port = process.env['DbPort'] || '3306';
const user = process.env['DbUsername'] || 'psc';
const password = process.env['DbPassword'] || 'psc2019%';
const database = process.env['Database'] || 'pscdb';

const sql = 'INSERT INTO `b_occi` (`occi_id`, `date`, `place`, `ship_imo_number`, `ship_name`, `callsign`, `mmsi`, `flag`, `ship_type`, `deficiencies`, `detention`, `classification_society`, `srpattoi`, `authority`, `port`, `lnspection_type`, `date_keel_laid`, `deadweight`, `tonnage`, `company_name`, `company_imo_number`, `residence`, `registered`, `phone`, `fax`, `email`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ON DUPLICATE KEY UPDATE `occi_id` = ?, `date` = ?, `place` = ?, `ship_imo_number` = ?, `ship_name` = ?, `callsign` = ?, `mmsi` = ?, `flag` = ?, `ship_type` = ?, `deficiencies` = ?, `detention` = ?, `classification_society` = ?, `srpattoi` = ?, `authority` = ?, `port` = ?, `lnspection_type` = ?, `date_keel_laid` = ?, `deadweight` = ?, `tonnage` = ?, `company_name` = ?, `company_imo_number` = ?, `residence` = ?, `registered` = ?, `phone` = ?, `fax` = ?, `email` = ?;';
const info_sql = 'INSERT INTO `b_occi_detail` (`occi_id`, `occi_detail_id`, `ground_for_detention`, `nature`) VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE `occi_id` = ?, `occi_detail_id` = ?, `ground_for_detention` = ?, `nature` = ?;';

var pool  = mysql.createPool({
	connectionLimit : 10,
	host            : host,
	port            : port,
	user            : user,
	password        : password,
	database        : database
});

//, `code`, `nature`, `ground_for_detention`
let persistence = function(list) {
	if(host == '0.0.0.0') {
		return;
	}
	console.log('dbSave'); 
	pool.getConnection(function(err, connection) {
		console.log('get connection');
		if (err) throw err;
		console.log('query sql = ' + sql);
		for(let i in list) {
//			console.log('i', i);
			let obj = list[i];
//			console.log('obj', obj);
			let parameter = [obj.id, obj.date, obj.place, obj.ship_imo_number, obj.ship_name, obj.callsign, obj.mmsi, obj.flag, obj.ship_type, obj.deficiencies, obj.detention, obj.classification_society, obj.srpattoi, obj.authority, obj.port, obj.lnspection_type, obj.date_keel_laid, obj.deadweight, obj.tonnage, obj.company_name, obj.company_imo_number, obj.residence, obj.registered, obj.phone, obj.fax, obj.email];
//			console.log(parameter);
			let query = connection.query(sql, parameter.concat(parameter),//parameter.push.apply(parameter, parameter)
				function (error, results, fields) {
//					console.log('save');
					if (error) {
						console.log('query.sql = ', query.sql, error);
//						throw error;
					}
//					console.log('save ok : ', results);
			});
			let infos = obj['infos']
			for(let j in infos) {
				let info = infos[j];
				let info_parameter = [obj.id, j, info.nature, info.ground_for_detention];
				let info_query = connection.query(info_sql, info_parameter.concat(info_parameter),//parameter.push.apply(parameter, parameter)
					function (error, results, fields) {
//						console.log('info save');
						if (error) {
							console.log('info_query.sql = ', info_query.sql, error);
//							throw error;
						}
//						console.log('info save ok : ', results);
				});
			}
		}
	});
};

module.exports = persistence;