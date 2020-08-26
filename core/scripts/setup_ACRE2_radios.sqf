/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _isArgaSetup   = getMissionConfigValue ["ACTIVAR_SETUP_PERSONALIZADO_RADIOS",  1] == 1;

if (!_isArgaSetup) exitWith {};

private _radioChannelName   = parseSimpleArray getMissionConfigValue ["RADIO_CHANNEL_NAME", '[]'];
private _setupRadioChanel   = parseSimpleArray getMissionConfigValue ["RADIO_CHANNEL_SETUP", '[]'];
private _channelNameInRadio = [["ACRE_PRC152","description"],["ACRE_PRC117F","name"]];
private _radioType          = '';
private _description        = '';
private _channel            = '';

params ["_unit", "_role"];

{
    _radioType = _x select 0;
    _defaultRadioChannel  = _x select 1;
    {
        _channelNumber = _x select 0;
        _channelText   = _x select 1;
        _description = (( _channelNameInRadio select {_radioType isEqualTo (_x select 0)} ) select 0) select 1;
        if (!isNil "_description") then {
            [_radioType, "default", _channelNumber, _description, _channelText] call acre_api_fnc_setPresetChannelField;
        };
        
    } forEach _defaultRadioChannel;

} forEach _radioChannelName;

if (!hasInterface || {player != _unit}) exitWith {false};

waitUntil { ([] call acre_api_fnc_isInitialized) };

_defaultRadioChannel = (( _setupRadioChanel select {_role isEqualTo (_x select 0)} ) select 0 ) select 1;

if (!isNil "_defaultRadioChannel") then {
    {
        _radioType = _x select 0;
        _channel   = _x select 1;
        [[[_radioType] call acre_api_fnc_getRadioByType, _channel] call acre_api_fnc_setRadioChannel] call MIV_fnc_log;
        
    } forEach _defaultRadioChannel;
};

/*
[
    {
        call acre_api_fnc_isInitialized
    }, 
    {
        params ["", "_role"];

        [_role,_setupRadioChanel] call MIV_fnc_log;
        _defaultRadioChannel = ( _setupRadioChanel select {[">>>>>>>>>>>>>>",_x select 0] call MIV_fnc_log;_role isEqualTo (_x select 0)} ) select 0;
        [_defaultRadioChannel] call MIV_fnc_log;
        if (!isNil "_defaultRadioChannel") then {
            {
                _radioType = _x select 0;
                _channel   = _x select 1;
                [_radioType,_channel] call MIV_fnc_log;
                //[[_radioType] call acre_api_fnc_getRadioByType, _channel] call acre_api_fnc_setRadioChannel;
                
            } forEach _defaultRadioChannel;
        };

    }, 
    _this
] call CBA_fnc_waitUntilAndExecute;
*/
/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
/*
 *
 * Called by: [this, "lider"] call compile preprocessFileLineNumbers "core\scripts\setup_ACRE2_radios.sqf";
 *
 */
/*
[""] call MIV_fnc_log;
[""] call MIV_fnc_log;
[""] call MIV_fnc_log;
["=============================================================================================="] call MIV_fnc_log;
*/