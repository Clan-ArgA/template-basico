/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

/*
    ACTIVAR_INSIGNIA_AUTOMATICO = 1;    // Añadir a arga_settings
    INSIGNIA_IR = 0;                    // establece si las insignias son IR o normales

    Setee la insignia de condor o yaguar (revisar caso con y sil tilde), en caso de
    no corresponder ninguna escuadra cargar la insignia de arga.

    La insignia de médico tiene prioridad.

    arga_in_visible_arga
    arga_in_visible_condor
    arga_in_visible_yaguar
    arga_in_visible_medico

    arga_in_ir_arga
    arga_in_ir_yaguar
    arga_in_ir_condor

    Junto con esto crear una función get_group con la signatura Unit -> String
    donde los posibles resultados son ["condor", "yaguar", "", nombrePersonalizado]
*/

private _enableAutomatiEnsign = getMissionConfigValue ["ACTIVAR_INSIGNIA_AUTOMATICO",  1] == 1;
private _ensignIR             = getMissionConfigValue ["INSIGNIA_IR",  0] == 1;

params [["_unit", player]];

private _group = [_unit] call compile preprocessFileLineNumbers "core\scripts\get_group.sqf";

private _isMedic = _unit getVariable ["ace_medical_medicClass", 0];

private _ensign = if (_ensignIR) then {"arga_in_ir_arga"} else {"arga_in_visible_arga"};

if (!_ensignIR) then {
    if (_group == "condor") then {_ensign = "arga_in_visible_condor"};
    if (_group == "yaguar") then {_ensign = "arga_in_visible_yaguar"};
} else {
    if (_group == "condor") then {_ensign = "arga_in_ir_condor"};
    if (_group == "yaguar") then {_ensign = "arga_in_ir_yaguar"};
};

_ensign = if (_isMedic > 0) then { "arga_in_visible_medico" } else { _ensign };

[_unit, _ensign] call BIS_fnc_setUnitInsignia;

//["_ensign:", _ensign] call MIV_fnc_log;

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
