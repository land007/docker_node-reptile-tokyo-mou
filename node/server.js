const http = require("http"), url = require("url"), path = require("path"), normalize = path.normalize, join = path.join, sep = path.sep, fs = require("fs");
const tokyoMou = require('./tokyo-mou');

const hostname = '0.0.0.0';
const port = 80;
const PageMax = 2;// 最大页数

const server = http.createServer(async (req, res) => {
	var pathname = url.parse(req.url).pathname;
	console.log('pathname', pathname);
	if(pathname == '/reptile.json') {// http://127.0.0.1/reptile.json
		var obj = {code: 200, msg: 'ok'};
		res.writeHead(200, {
			"Content-Type" : "text/javascript",
			"Cache-Control" : "no-store, no-cache, must-revalidate",
			"Pragma" : "no-cache",
			"Access-Control-Allow-Origin" : "*",
			"Access-Control-Allow-Headers" : "Content-Type,Content-Length, Authorization, Accept,X-Requested-With",
			"Access-Control-Allow-Methods" : "PUT,POST,GET,DELETE,OPTIONS",
		});
		let json = await tokyoMou.reptile('23.07.2019', '23.07.2019', PageMax);
		res.end(JSON.stringify(json));
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