/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

params ["_box"];

if(isNil "_box") exitWith {};

private _boxRoleList = parseSimpleArray getMissionConfigValue ["BOX_ROLE_LIST", []];
private _equipment   = call MIV_fnc_getEquipment;

removeAllActions _box;

private ["_roleCode", "_rolePath","_role"];

{
    _role = _x;
    
    _roleCode = [toLower _role, []] call MIV_fnc_getRoleCode;
    _rolePath = format ['core\roles\%1.sqf', _roleCode];
	
	_box addAction ["<t color='#ffffff'>" + _x + "</t>", {  
            params ["_target", "_caller", "_actionId", "_arguments"];
            ["_arguments:",_arguments] call MIV_fnc_log;
            private _role =  (_arguments select 0);
            private _params = [_caller, (_role select 1)];
            _params append (_arguments select 1);
            _params execVM "core\roles\base.sqf";
            hint format ["Rol: %1", _role select 0]; 
        }, [[_role, _rolePath], _equipment], 1.5, true, true, "","true", 4, false, "", ""
    ];
} forEach _boxRoleList;

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
//["_roleCode:",_roleCode] call MIV_fnc_log;
/*
private _roles = [
    ["Ametrallador M240", "core\roles\ametrallador_m240.sqf"], 
    ["Ametrallador M249", "core\roles\ametrallador_m249.sqf"], 
    ["Capitán", "core\roles\lider.sqf"],
    ["Enfermero", "core\roles\enfermero.sqf"], 
    ["Francotirador", "core\roles\francotirador.sqf"], 
    ["Fusilero", "core\roles\fusilero.sqf"],
    ["Fusilero RA", "core\roles\fusilero_ra.sqf"], 
    ["Granadero", "core\roles\granadero.sqf"],
    ["Granadero Bengalas", "core\roles\granadero_bengalas.sqf"], 
    ["Ingeniero", "core\roles\ingeniero.sqf"],  
    ["Lanzador AA", "core\roles\lanzador_aa.sqf"], 
    ["Lanzador AT", "core\roles\lanzador_at.sqf"],
    ["Líder", "core\roles\lider_peloton.sqf"], 
    ["Médico de Combate", "core\roles\medico_combate.sqf"], 
    ["Médico", "core\roles\medico.sqf"], 
    ["Observador", "core\roles\observador.sqf"], 
    ["Piloto", "core\roles\piloto.sqf"], 
    ["Radio Operador", "core\roles\radio_operador.sqf"],
    ["Teniente", "core\roles\sub_lider.sqf"],
    ["Tirador FAL", "core\roles\tirador_fal.sqf"],
    ["Tirador MK11", "core\roles\tirador_mk11.sqf"]
];
*/