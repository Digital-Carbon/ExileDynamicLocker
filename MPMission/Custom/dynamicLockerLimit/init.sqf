private ['_code', '_function', '_file'];

{
	_code = '';
	_function = _x select 0;
	_file = _x select 1;

	_code = compileFinal (preprocessFileLineNumbers _file);

	missionNamespace setVariable [_function, _code];
}
forEach
[
	['LL_getLockerLimit','Custom\dynamicLockerLimit\getLockerLimit.sqf']
];