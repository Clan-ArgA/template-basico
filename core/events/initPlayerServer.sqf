/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
private _enableAutomaticRole = getMissionConfigValue ["ACTIVAR_ROL_AUTOMATICO",  1] == 1;

params ["_playerUnit", "_didJIP"];

waitUntil { time > 0 };

sleep 5;

if (call MIV_fnc_isLogSystemEnabled) then {
    [[_playerUnit]] call MIV_fnc_write_alternative_role;
    [_playerUnit, "connected"] execVM "core\scripts\db\querys\write_log.sqf";
    _playerUnit setVariable ["MANDI_IS_PLAYER", true];
};

if ((_enableAutomaticRole)) then {
  call compile preprocessFile "core\scripts\set_role.sqf";
};
_playerUnit action ["SwitchWeapon", _playerUnit, _playerUnit, 100];

_playerUnit call MIV_fnc_setInsignia;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
// ["_enableAutomaticRole:",_enableAutomaticRole] call MIV_fnc_log;