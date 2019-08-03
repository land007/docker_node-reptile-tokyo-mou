const Signal = require('await-signal');
var signals = {};

let unite = async function(fun, key, value) {
	console.log(arguments);
	_arguments = [];
	let i = 0;
	for(let a in arguments) {
		if(i > 0) {
			_arguments[_arguments.length] = arguments[a];
		}
		i++;
	}
	if(signals[key] === undefined) {
		signals[key] = {signal: new Signal('default'), value: null};
		let data = await fun.apply(this, _arguments);
		signals[key].value = data;
		signals[key].signal.state = 'ok';
		console.log('run1', data);
		setTimeout(() => {
			delete signals[key];
		}, 10);
		return data;
	} else {
		await signals[key].signal.until('ok');
		let data = signals[key].value;
		console.log('run2', data);
		return data;
	}
};

module.exports = unite;