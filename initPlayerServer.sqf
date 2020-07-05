/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params ["_playerUnit", "_didJIP"];

["*************** Antes del waitUntil Player ***************"] call BIS_fnc_logFormat;

waitUntil { time > 0 };

["*************** Despues del waitUntil Player ***************"] call BIS_fnc_logFormat;

sleep 5;

if (isDedicated) then {
    [[_playerUnit]] call compile preprocessFileLineNumbers "scripts\db\querys\write_alternative_role.sqf";
    [_playerUnit, "connected"] execVM "scripts\db\querys\write_log.sqf";
};

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/