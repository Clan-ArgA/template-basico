/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

//setFuntionCalled

params ["_uid","_functionName"];

if (!isServer) exitWith { };

params["_player"];

private _playerUID = getPlayerUID _player;

MIV_ALREADY_CONNECTED_PLAYERS append [_playerUID];
//MIV_
//publicVariable

//[ [ "UID1", [funcion1, funcion2]], [ "UID2", [funcion1, funcion2]] ]

//return true o false

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/