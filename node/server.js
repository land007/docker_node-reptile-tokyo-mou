const http = require("http"), url = require("url"), path = require("path"), normalize = path.normalize, join = path.join, sep = path.sep, querystring = require('querystring');
const tokyoMou = require('./tokyo-mou');
const moment = require('moment');
const converter = require('./converter');

const hostname = '0.0.0.0';
const port = 80;

const SubtractDays = process.env['SUBTRACTDAYS'] || '1';// 减去天数

const server = http.createServer(async (req, res) => {
	var pathname = url.parse(req.url).pathname;
	console.log('pathname', pathname);
	if(pathname == '/reptile.json') {// http://127.0.0.1/reptile.json
		var arg = url.parse(req.url).query;
		var force = querystring.parse(arg).force;
		if(force === undefined) {
			force = false;
		} else {
			if(force == 'true') {
				force = true;
			} else {
				force = false;
			}
		}
		var pageMax = querystring.parse(arg).pageMax || process.env['PAGEMAX'] || '8';// 最大页数
		var obj = {code: 200, msg: 'ok'};
		res.writeHead(200, {
			"Content-Type" : "text/javascript",
			"Cache-Control" : "no-store, no-cache, must-revalidate",
			"Pragma" : "no-cache",
			"Access-Control-Allow-Origin" : "*",
			"Access-Control-Allow-Headers" : "Content-Type,Content-Length, Authorization, Accept,X-Requested-With",
			"Access-Control-Allow-Methods" : "PUT,POST,GET,DELETE,OPTIONS",
		});
		let from = querystring.parse(arg).from || moment().subtract(parseInt(SubtractDays), 'days').format('DD.MM.YYYY') || '30.07.2019';// 开始日期
		let till = querystring.parse(arg).till || moment().subtract(parseInt(SubtractDays), 'days').format('DD.MM.YYYY') || '30.07.2019';// 截至日期
		let list = await tokyoMou.reptile(from, till, parseInt(pageMax), force);
		let json = converter(list);
		res.end(JSON.stringify(json, null, 4));
		// console.log(tokyoMou);
	} else {
		res.statusCode = 404;
		res.setHeader('Content-Type', 'text/plain');
		res.end('Not find');
	}
});

server.listen(port, hostname, () => {
    console.log(`Server running at http://${hostname}:${port}/`);
});