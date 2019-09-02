const request = require('request');
const cheerio = require('cheerio');
const fs = require('fs');
const EventProxy = require('eventproxy');
const Bagpipe = require('bagpipe');
const { promisify } = require('util');
const statAsync = promisify(fs.stat);
const schedule = require('node-schedule');
const moment = require('moment');
const readFile = (fileName) => promisify(fs.readFile)(fileName, 'utf8');
const unite = require('./unite');
const converter = require('./converter');
const persistence = require('./persistence');

const OpenProxy = process.env['PIPEMAX'] || 'false';// 打开代理
const PipeMax = process.env['PIPEMAX'] || '20';// 同时任务数
const PageMax = process.env['PAGEMAX'] || '8';// 最大页数
const SubtractDays = '1';// 减去天数process.env['SUBTRACTDAYS'] || 
const Key = '<span style="font-size: 20px; font-weight: 700;">';// 验证码Key
const Proxys = [
		'https://odq5mfsnhb.execute-api.ap-southeast-1.amazonaws.com/default/Proxy1',
		'https://3sxgfrx6jl.execute-api.ap-southeast-1.amazonaws.com/default/Proxy2',
		'https://ibbf9cf79a.execute-api.ap-southeast-1.amazonaws.com/default/Proxy3',
		'https://w78jfh25yc.execute-api.ap-southeast-1.amazonaws.com/default/Proxy4',
		'https://12gcj0rf01.execute-api.ap-southeast-1.amazonaws.com/default/Proxy5',
		'https://cn6oss1fyd.execute-api.ap-southeast-1.amazonaws.com/default/Proxy6',
		'https://bys9rcfdcd.execute-api.ap-southeast-1.amazonaws.com/default/Proxy7',
		'https://wsbq95erq1.execute-api.ap-southeast-1.amazonaws.com/default/Proxy8',
		'https://mhu9tizbnj.execute-api.ap-southeast-1.amazonaws.com/default/Proxy9',
		'https://8yflvll8a2.execute-api.ap-southeast-1.amazonaws.com/default/Proxy10'
	];
const Cron = process.env['CRON'] || '30 1 1 * * *';//每天的凌晨1点1分30秒触发
var porxyNum = 0;//代理游标

//const post_method = 'formData';// multipart/form-data
const post_method = 'form';// application/x-www-form-urlencoded
const bagpipe = new Bagpipe(parseInt(PipeMax));
const ep = new EventProxy();

const _proxy_request = function(options, callback) {
	if(OpenProxy == 'true') {
		let uri = options.uri;
		porxyNum++;
		if(porxyNum >= Proxys.length) {
			porxyNum = 0;
		}
		options.uri = Proxys[porxyNum];
		options.headers.uri = uri;
		request(options, callback);
	} else {
		request(options, callback);
	}
};

const proxy_request = function(options) {
	return new Promise(
			function(resolve, reject) {
				_proxy_request(options, function(error, response, body) {
					if (error)
						console.log(error);
					//console.log(body);
					resolve(body);
				});
			});
};


var _getItem = function(code, callback) {
	let options = {
		method: 'POST',
		jar: true,
		uri: 'https://apcis.tmou.org/public/?action=getshipinsp',
		headers: {
			'Accept': '*/*',
			'Content-Type': 'application/x-www-form-urlencoded',
			'Origin': 'https://apcis.tmou.org',
			'Referer': 'https://apcis.tmou.org/public/?action=getinspections',
			'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36',
			'X-Requested-With': 'XMLHttpRequest'
		},
		[post_method]: {
			'UID': code//'6D98F5AE-46F3-41EF-A5ED-2515F509FE4E'
		}
	};
	_proxy_request(options, function(error, response, body) {
		//console.log('body', body);
		var $ = cheerio.load(body);
		var captionList = $('.table');
		var itemList = [];
		captionList.find("tr").each(function(index, item) {
			var cap = $(this);
			var tds = cap.children();
			for(let i = 0; i < tds.length; i++) {
				let texts = tds[i].children;
				if(texts[0] !== undefined) {
					let data = null;
					if(texts[0].type == 'text') {
						data = texts[0].data;
					} else if (texts[0].type == 'tag') {
						if(texts[1] !== undefined && texts[1].type== 'text') {
							data = texts[1].data;
						} else {
							data = texts[0].attribs.src || texts[0].attribs.value;
						}
					}
					if(itemList[index] === undefined) {
						itemList[index] = [];
					}
					itemList[index][i] = data;
				}
			}
		});
		callback(itemList);
		// callback(body);
	});
};

var getItem = function(code) {
	return new Promise(function(resolve, reject) {
		_getItem(code, resolve);
	});
};

var getItems = function(items) {
	return new Promise(async function(resolve, reject) {
		console.log('get_all_items', items.length);
		ep.after('get_item', items.length, function (_items) {
			//_items.sort(compare('i'));
			console.log('get_all_item');
			for(let i in _items) {
				items[_items[i].i][items[_items[i].i].length] = _items[i].info;
			}
			resolve(items);
		});
		for (let i = 0; i < items.length; i++) {
			bagpipe.push(_getItem, items[i][0], function (info) {
				console.log('get_item', i);
				ep.emit('get_item', {i: i, info: info});
			});
		}
	});
};

var _getTable = function(page, from, till, callback) {
	let options = {
		method: 'POST',
		jar: true,
		uri: 'https://apcis.tmou.org/public/?action=getinspections',
		headers: {
			'Content-Type': 'application/x-www-form-urlencoded',
			'Origin': 'https://apcis.tmou.org',
			'Referer': 'https://apcis.tmou.org/public/',
			'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36',
			'X-Requested-With': 'XMLHttpRequest',
			//'Cookie': '__utma=165489210.280155378.1563845295.1563845295.1563845295.1; __utmc=165489210; __utmz=165489210.1563845295.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none)'
			//'Cookie': 'PHPSESSID=2khuguktuticv0lmesgb9258l6'
		},
		[post_method]: {
			'Page': page,
			'imo': '',
			'callsign': '',
			'name': '',
			'compimo': '',
			'compname': '',
			'From': from,
			'Till': till,
			'authority': '0',
			'flag': '0',
			'class': '0',
			'ro': '0',
			'type': '0',
			'result': '0',
			'insptype': '-1',
			'sort1': '0',
			'sort2': 'DESC',
			'sort3': '0',
			'sort4': 'DESC',
		}
	};
	_proxy_request(options, function(error, response, body) {
//		console.log('body', body);
		var $=cheerio.load(body);
		var captionList = $('.table');
		var itemList = [];
		captionList.find("tr").each(function(index, item) {
			var cap = $(this);
			var tds = cap.children();
			//console.log(tds.length);
			for(let i = 0; i < tds.length; i++) {
				let texts = tds[i].children;
				if(texts[0]!== undefined) {
					let data = null;
					if(texts[0].type == 'text') {
						data = texts[0].data;
					} else if (texts[0].type == 'tag') {
						if(i == 0) {
							data = texts[1].attribs.src || texts[1].attribs.value;
						} else {
							if(texts[1] !== undefined && texts[1].type== 'text') {
								data = texts[1].data;
							} else {
								data = texts[0].attribs.src || texts[0].attribs.value;
							}
						}
					}
					if(itemList[index] === undefined) {
						itemList[index] = [];
					}
					itemList[index][i] = data;
				}
				//for(let name in texts) {
				//	console.log(name, texts[name]);
				//}
			}
			//for(let td in tds) {
			//	console.log(td);
			//}
			//console.log(cap.find('h3').text());
			//var item = {
			//	title: cap.find('h3').text(),
			//	linkUrl: cap.find('a').attr('href')
			//}
			//itemList.push(item);
		});
		if(itemList.length > 0) {
			//Found 3441 elements in 137 page(s). Pages from 1 to 25
			//Legend:	 - initial inspection	 - follow-up inspection
			let page = body.substring(body.indexOf('elements in ') + 'elements in '.length, body.length);
			page = page.substring(0, page.indexOf(' page(s)'));
			page = parseInt(page);
			if(page != page) {//如果没有页数信息，说明只有一页
				page = 1;
			}
			itemList[0][itemList[0].length] = page;
		}
		callback(itemList);
	});
};

var getTable = function(page, from, till) {
	return new Promise(function(resolve, reject) {
		_getTable(page, from, till, resolve);
	});
};

var login = function() {
	return new Promise(function(resolve, reject) {
		let options = {
			method: 'GET',
			jar: true,
			uri: 'https://apcis.tmou.org/public/',
			headers: {
				'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3',
				'accept-encoding': 'gzip, deflate, br',
				'accept-language': 'zh-CN,zh;q=0.9,en;q=0.8',
				'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36',
			}
		};
		_proxy_request(options, function(error, response, body) {
//			console.log('form.headers', response.headers);
//			console.log('form.body', body);
			let run = body.substring(body.indexOf(Key) + Key.length, body.length);
			run = run.substring(0, run.indexOf('='));
			console.log(run);
			let res = eval(run);
			console.log(res);
			options = {
				method: 'POST',
				jar: true,
				uri: 'https://apcis.tmou.org/public/?action=login',
				headers: {
					'accept': '*/*',
					'accept-encoding': 'gzip, deflate, br',
					'accept-language': 'zh-CN,zh;q=0.9,en;q=0.8',
					'origin': 'https://apcis.tmou.org',
					'referer': 'https://apcis.tmou.org/public/',
					'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36',
				},
				[post_method]: {
					'captcha': res
				}
			};
			_proxy_request(options, function(error, response, body) {
//				console.log('login.headers', response.headers);
//				console.log('login.body', body);
				resolve(body);
			});
		});
	});
};

var compare = function(name) {
    return function(a,b) {
        var value1 = a[name];
        var value2 = b[name];
        return value1 - value2;
    }
};

var getTables = function(max, from, till) {
	return new Promise(async function(resolve, reject) {
		// let itemLists = [];
		// itemLists[0] = await getTable(1, from, till);
		// console.log(itemLists[0]);
		// //itemLists[1] = await getTable(2, from, till);
		// //console.log(itemLists[1]);
		// //itemLists[2] = await getTable(3, from, till);
		// //console.log(itemLists[2]);
		// resolve(itemLists);
		let itemList1 = await getTable(1, from, till);
		console.log('get_tables', 0);
//		console.log('itemList1', itemList1);
		let page = itemList1[0][itemList1[0].length - 1];//获得总页数
		console.log('page', page);
		if(page !== page) {//NaN 不等于自身
			//reject();
			return;
		}
		console.log('max', max);
		if(page > max) {
			page = max;
		}
		if(page > 1) {//超过一页
			ep.after('get_tables', page - 1, function (itemLists) {
				itemLists.unshift({i: 1, itemList: itemList1});//把第一页加进去
				itemLists.sort(compare('i'));
				resolve(itemLists);
			});
			for (let i = 2; i <= page; i++) {
				bagpipe.push(_getTable, i, from, till, function (itemList) {
					console.log('get_tables', i);
					ep.emit('get_tables', {i: i, itemList: itemList});
				});
			}
		} else {
			resolve([{i: 1, itemList: itemList1}]);
		}
	});
};

var crawling = function(from, till, max) {
	return new Promise(async function(resolve, reject) {
		let time = new Date().getTime();
		let msg = await login();
		console.log('login time', new Date().getTime() - time); time = new Date().getTime();
		if(msg == '{"message": "Internal server error"}') {
			resolve('');
			return;
		}
		let itemLists = await getTables(max, from, till);
		let items = [];
		let itemTitle = null;
		for(let i in itemLists) {
			let itemList = itemLists[i].itemList;
			//itemList.splice(0, 1);
			itemTitle = itemList.splice(0, 1)[0];//取出标题
			for(let j in itemList) {
				items[items.length] = itemList[j];
				//console.log(itemList[j]);
			}
		}
		console.log('getTables time', new Date().getTime() - time); time = new Date().getTime();
		items = await getItems(items);
		console.log('getItems time', new Date().getTime() - time); time = new Date().getTime();
		//console.log(itemLists);
		if(itemTitle != null) {
			items.unshift(itemTitle);
		}
		resolve(items);
	});
};

var reptile = function(from, till, max, force) {
	return new Promise(async function(resolve, reject) {
		if(!force) {//如果不是强制，可以取缓存信息
			console.log('取缓存');
			let file_path = __dirname + '/reptile_' +  from + '-' + till + '-' + max + '.json';
			try {
				let content = await readFile(file_path);
				let json = JSON.parse(content);
				resolve(json);
				return;
			} catch (e) {
				console.log('没有找到 ' + file_path + ' 缓存文件');
			}
		}
		console.log('取网站');
		let items = await unite(crawling, from, till, max);
		resolve(items);
	});
};

var start = async function() {
	console.log('start1');
	let from = moment().subtract(parseInt(SubtractDays), 'days').format('DD.MM.YYYY') || '30.07.2019';// 开始日期
	let till = moment().subtract(parseInt(SubtractDays), 'days').format('DD.MM.YYYY') || '30.07.2019';// 截至日期
	let items = await reptile(from, till, parseInt(PageMax), false);
//	console.log('items', items);
	if(items !== '') {
		let file_path = __dirname + '/reptile_' +  from + '-' + till + '-' + PageMax + '.json';
		fs.writeFile(file_path, JSON.stringify(items, null, 4), function(err) {
			console.log('写文件 ' + file_path + ' 操作成功!');
		});
	}
	//保存到数据库
	let json = converter(items);
	persistence(json);
};

start();

var scheduleCronstyle = function() {
    schedule.scheduleJob(Cron, ()=>{
        console.log('scheduleCronstyle:', moment().format('LLL'));
        start();
    }); 
}

scheduleCronstyle();

module.exports = {reptile};


