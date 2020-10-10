/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

params["_unit"];

private _playerUID = getPlayerUID _unit;
private _isUIDInList = false;

if (_playerUID in ALREADY_CONNECTED_PLAYERS) then {
    _isUIDInList = true;
};

_isUIDInList

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
//["WPC:",_unit,_playerUID,ALREADY_CONNECTED_PLAYERS ,_playerUID in ALREADY_CONNECTED_PLAYERS] call MIV_fnc_Log;