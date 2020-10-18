/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

params ["_playerUnit","_functionName"];

if (!isServer) exitWith { };

if (isNil "MIV_CALLED_FUNCTIONS") exitWith { };

private _index     = -1;
private _playerUID = getPlayerUID _playerUnit;

{
    if (_x select 0 == _playerUID) exitWith {
        _index = _forEachIndex;
    };

} forEach MIV_CALLED_FUNCTIONS;

["SFC1:",_playerUnit,_functionName,_index] call MIV_fnc_Log;

if (_index == -1) exitWith {
    MIV_CALLED_FUNCTIONS append [[_playerUID,[_functionName]]];
    publicVariable "MIV_CALLED_FUNCTIONS";
    ["SFC2:",_playerUnit,_functionName,MIV_CALLED_FUNCTIONS] call MIV_fnc_Log;
};

private _functionSearch = MIV_CALLED_FUNCTIONS select _index select 1 select {_functionName in _x};

["SFC3:",_playerUnit,_functionName,_functionSearch] call MIV_fnc_Log;

if (isNil "_functionSearch" || count _functionSearch == 0) exitWith {
    MIV_CALLED_FUNCTIONS select _index select 1 append [_functionName];
    publicVariable "MIV_CALLED_FUNCTIONS";
    ["SFC4:",_playerUnit,_functionName,MIV_CALLED_FUNCTIONS] call MIV_fnc_Log;
};

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
//["WPC2:",_functionSearch] call MIV_fnc_Log;