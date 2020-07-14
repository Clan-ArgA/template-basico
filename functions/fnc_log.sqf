/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params [["_strData", []]];

if (!(getMissionConfigValue ["DEBUG", 0] == 1)) exitWith { };

private _data = missionName;

_strData = _strData apply {if (typeName _x != "STRING") then { str _x } else { _x }};
{
	_data = _data + " " + _x;	
} forEach _strData;

[format ["%1", _data]] call BIS_fnc_logFormat;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/