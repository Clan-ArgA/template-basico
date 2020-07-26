/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

params [["_box", objNull],["_role", ""]];

if(isNil "_box") exitWith {};

private _camo = parseSimpleArray getMissionConfigValue ["CAMUFLAJE", ["Bosque", "Multicam"]];
private _camoColor = toLower (_camo select 0);
private _camoType = toLower (_camo select 1);
private _uniform = "";
private _helmet = "";
private _vest = "";
private _backPack = "";
private _backPackLittle = "";

if (_camoColor == "personalizado") then {
    _uniform = getMissionConfigValue ["UNIFORME_PERSONALIZADO", "arga_u_gen3_bosque_marpat"];
    _helmet = getMissionConfigValue ["CASCO_PERSONALIZADO", "arga_cas_combate_bosque_marpat"];
    _vest = getMissionConfigValue ["CHALECO_PERSONALIZADO", "arga_c_pesado_bosque_marpat"];
    _backPack = getMissionConfigValue ["MOCHILA_PERSONALIZADO", "arga_m_petate_bosque_marpat"];
    _backPackLittle = getMissionConfigValue ["MOCHILA_CHICA_PERSONALIZADO", "arga_m_asalto_bosque_marpat"];
};

if (_camoColor != "personalizado" && _camoColor != "no editar") then {
    _uniform = format ["arga_u_gen3_%1_%2", _camoColor, _camoType];
    if (_camoColor == "negro") then {
        _camoType = "liso";
    };
    _helmet = format ["arga_cas_combate_%1_%2", _camoColor, _camoType];
    _vest = format ["arga_c_pesado_%1_%2", _camoColor, _camoType];
    _backPack = format ["arga_m_petate_%1_%2", _camoColor, _camoType];
    _backPackLittle = format ["arga_m_asalto_%1_%2", _camoColor, _camoType];
};

private _equipment = [];

if (_camoColor != "no editar") then {
    _equipment = [_uniform, _helmet, _vest, _backPack, _backPackLittle];
};

if (_role != "") then {
    [player, _role, _uniform, _helmet, _vest, _backPack, _backPackLittle] call compile preprocessFile "core\roles\base.sqf";
};

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

removeAllActions _box;

{
    _box addAction ["<t color='#ffffff'>" + (_x select 0) + "</t>", {  
            params ["_target", "_caller", "_actionId", "_arguments"];
            private _role =  (_arguments select 0);
            private _params = [_caller, (_role select 1)];
            _params append (_arguments select 1);
            _params execVM "core\roles\base.sqf";
            hint format ["Rol: %1", _role select 0]; 
        }, [_x, _equipment], 1.5, true, true, "","true", 4, false, "", ""  
    ];
} forEach _roles;   

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/