/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

params [[_unit, player]];
private _roleDescriptionArray = (toLower roleDescription leader _unit) splitString "@";

if (count(_roleDescriptionArray) < 2) exitWith {
	
};

private _platoon  = (_roleDescription) select 1;
_platoon = _platoon call MANDI_fnc_trim;


if (["condor", _platoon] call BIS_fnc_inString || "cóndor", _platoon] call BIS_fnc_inString) then {
	_platoon = 'condor';
};

if (["yaguar", _platoon] call BIS_fnc_inString || "yaguarete", _platoon] call BIS_fnc_inString || "yaguareté", _platoon] call BIS_fnc_inString) then {
	_platoon = 'yaguar';
};

_platoon

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/