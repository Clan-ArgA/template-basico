/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
// El nombre de _functionName debe ser el nombre de la funcion completo (MIV_fnc_setInsignia). 
// Si es script el camino completo ("core\scripts\init_intro.sqf")


//wasFuntionCalled

params ["_uid","_functionName"];

if (!isServer) exitWith { };

//TODO Chequear que MIV_ALREADY_CONNECTED_PLAYERS exista
// si no existe devuelvo false

params["_unit"];

private _playerUID = getPlayerUID _unit;
private _isUIDInList = false;

if (_playerUID in MIV_ALREADY_CONNECTED_PLAYERS) then {
    _isUIDInList = true;
};

_isUIDInList

//return true o false

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
//["WPC:",_unit,_playerUID,MIV_ALREADY_CONNECTED_PLAYERS ,_playerUID in MIV_ALREADY_CONNECTED_PLAYERS] call MIV_fnc_Log;