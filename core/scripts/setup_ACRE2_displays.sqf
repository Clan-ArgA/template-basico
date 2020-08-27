/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _enableAcreSetup   = getMissionConfigValue ["ACTIVAR_SETUP_PERSONALIZADO_RADIOS",  1] == 1;

if (!_enableAcreSetup) exitWith {};

private _radioChannelName   = parseSimpleArray getMissionConfigValue ["RADIO_CHANNEL_NAME", '[]'];
private _channelNameInRadio = [["ACRE_PRC152","description"],["ACRE_PRC117F","name"]];
private _radioType          = '';
private _description        = '';
private _channel            = '';

{
    _radioType = _x select 0;
    _defaultRadioChannel  = _x select 1;
    {
        _channelNumber = _x select 0;
        _channelText   = _x select 1;
        _description = (( _channelNameInRadio select {_radioType isEqualTo (_x select 0)} ) select 0) select 1;
        [_radioType,_channelNumber,_description, _channelText] call MIV_fnc_log;
        if (!isNil "_description") then {
            [_radioType, "default", _channelNumber, _description, _channelText] call acre_api_fnc_setPresetChannelField;
        };
        
    } forEach _defaultRadioChannel;

} forEach _radioChannelName;

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

//[""] call MIV_fnc_log;
