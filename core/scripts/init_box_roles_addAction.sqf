/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

params ["_box", "_role", "_roleCode", "_equipment", "_equipmentItems"];

if(isNil "_box") exitWith {};

_box addAction [
    "<t color='#ffffff'>" + _role + "</t>",                       // title
    {  
        params ["_target", "_caller", "_actionId", "_arguments"];
        private _role =  (_arguments select 0);
        private _params = [_caller, (_role select 1)];
        _params append (_arguments select 1);
        _params append (_arguments select 2);
        _params execVM "core\roles\base.sqf";
        hint format ["Rol: %1", _role select 0];
    }, 
    [[_role, _roleCode], _equipment, _equipmentItems],            // arguments
    1.5,		                                                  // priority
	true,		                                                  // showWindow
	true,		                                                  // hideOnUse
	"",			                                                  // shortcut
	"true",		                                                  // condition 
    4,                                                            // radius
    false,		                                                  // unconscious
	"",			                                                  // selection
	""			                                                  // memoryPoint
];


/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
// ["[AddAction] _role:",_role] call MIV_fnc_log;
// ["[AddAction] _roleCode:",_roleCode] call MIV_fnc_log;
// ["[AddAction] _arguments:",_arguments] call MIV_fnc_log;
// ["[AddAction] _params:",_params] call MIV_fnc_log;
// ["[AddAction] _arguments select 1:",_arguments select 1] call MIV_fnc_log;
// ["[AddAction] _arguments select 2:",_arguments select 2] call MIV_fnc_log;

