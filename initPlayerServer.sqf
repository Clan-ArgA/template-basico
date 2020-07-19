/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
private _enableAutomaticRole = getMissionConfigValue ["PERMITIR_ROL_AUTOMATICO",  1] == 1;

params ["_playerUnit", "_didJIP"];

waitUntil { time > 0 };

sleep 5;

if ((getMissionConfigValue ["ENABLE_LOG_SYSTEM", 0] == 1)) then {
    [[_playerUnit]] call MIV_fnc_write_alternative_role;
    [_playerUnit, "connected"] execVM "scripts\db\querys\write_log.sqf";
    _playerUnit setVariable ["MANDI_IS_PLAYER", true];
};

if ((_enableAutomaticRole)) then {
  execVM "scripts\set_roles.sqf"
};

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/