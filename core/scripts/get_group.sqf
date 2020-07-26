/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

params [["_unit", player]];

private ["_roleDescriptionArray","_platoon"];

_roleDescriptionArray = (toLower roleDescription leader _unit) splitString "@"; 
["_roleDescriptionArrayles:", _roleDescriptionArray] call MIV_fnc_log;

if (count(_roleDescriptionArray) >= 2) then {
	
	_platoon  = (_roleDescriptionArray) select 1;
	_platoon = _platoon call MANDI_fnc_trim;

	if ((_platoon isEqualTo "condor") || (_platoon isEqualTo "cóndor")) then {
		_platoon = 'condor';
	};

	if (_platoon isEqualTo "yaguar" || _platoon isEqualTo "yaguarete" || _platoon isEqualTo "yaguareté") then {
		_platoon = 'yaguar';
	};

} else {
	_platoon = groupId group _unit;
};

_platoon

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
//["_platoon return:", _platoon] call MIV_fnc_log;