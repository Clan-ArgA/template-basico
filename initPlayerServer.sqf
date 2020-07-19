/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params ["_playerUnit", "_didJIP"];

waitUntil { time > 0 };

sleep 5;

if (call MIV_fnc_isLogSystemEnabled) then {
    [[_playerUnit]] call MIV_fnc_write_alternative_role;
    [_playerUnit, "connected"] execVM "scripts\db\querys\write_log.sqf";
    _playerUnit setVariable ["MANDI_IS_PLAYER", true];
};

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/