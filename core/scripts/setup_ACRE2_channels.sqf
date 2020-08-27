/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _enableAcreSetup   = getMissionConfigValue ["ACTIVAR_SETUP_PERSONALIZADO_RADIOS",  1] == 1;

if (!_enableAcreSetup) exitWith {};

private _setupRadioChanel   = parseSimpleArray getMissionConfigValue ["RADIO_CHANNEL_SETUP", '[]'];
private _radioType          = '';
private _channel            = '';

params ["_unit", "_role"];

if (!hasInterface || {player != _unit}) exitWith {false};

waitUntil { ([] call acre_api_fnc_isInitialized) };

_defaultRadioChannel = (( _setupRadioChanel select {_role isEqualTo (_x select 0)} ) select 0 ) select 1;

if (!isNil "_defaultRadioChannel") then {
    {
        _radioType = _x select 0;
        _channel   = _x select 1;
        [[_radioType] call acre_api_fnc_getRadioByType, _channel] call acre_api_fnc_setRadioChannel;
        
    } forEach _defaultRadioChannel;
} else {
    [(["ACRE_PRC343"] call acre_api_fnc_getRadioByType), 10] call acre_api_fnc_setRadioChannel;
};

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
//[""] call MIV_fnc_log;
