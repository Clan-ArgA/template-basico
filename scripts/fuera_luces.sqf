_types = ["Lamps_Base_F","PowerLines_base_F","Land_PowerPoleWooden_L_F"];

private _state = _this select 0;

for [ {_i=0}, {_i < (count _types)}, {_i=_i+1} ] do
{
	_lamps = getMarkerPos "LIGHTSOURCE" nearObjects [_types select _i, 800];
	sleep 1;
	{ _x setDamage _state } forEach _lamps;
};
