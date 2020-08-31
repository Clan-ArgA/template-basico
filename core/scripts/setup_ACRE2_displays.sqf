/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _enableAcreSetup   = getMissionConfigValue ["ACTIVAR_SETUP_PERSONALIZADO_RADIOS",  1] == 1;

if (!_enableAcreSetup) exitWith {};

private _radioChannelName   = parseSimpleArray getMissionConfigValue ["RADIO_CHANNEL_NAME", '[]'];
private _fixedChannelName   = parseSimpleArray getMissionConfigValue ["FIXED_CHANNEL_NAME", '[]'];
private _channelNameInRadio = [["ACRE_PRC152","description"],["ACRE_PRC117F","name"]];
private _radioType          = '';
private _description        = '';
private _channel            = '';
private _platoon            = [];
private _channelCompare     = '';
private _neededChannels     = [];

{
	_platoon append [_x call MIV_fnc_getGroup];

} foreach playableUnits;
_platoon = _platoon arrayIntersect _platoon;
_neededChannels = _platoon + _fixedChannelName;

{
    _radioType             = _x select 0;
    _defaultRadioChannel   = _x select 1;
    private _platoonNumber = 1;
    private _channelMax    = 0;
    private _channeArray   = [];

    _description    = (( _channelNameInRadio select {_radioType isEqualTo (_x select 0)} ) select 0) select 1;
    {
        private _channelNumber = _x select 0;
        private _channelText   = _x select 1;
        _channeArray append [_channelNumber];
        _channelCompare = _neededChannels select {(toLower _channelText) in (toLower _x) } ;
        if (isNil "_channelCompare" || count(_channelCompare) == 0) then { 
            _channelText = format ["PELOTON %1",_platoonNumber];
            _platoonNumber = _platoonNumber + 1;
        };
        if (!isNil "_description") then {
            [_radioType, "default", _channelNumber, _description, _channelText] call acre_api_fnc_setPresetChannelField;
        };
        
    } forEach _defaultRadioChannel;
    _channelMax = selectMax _channeArray;
    for "_channelNumber" from 1 to count(_platoon)-2 do { 
        if (!isNil "_description") then {
            _channelText = format ["PELOTON %1",_platoonNumber];
            _platoonNumber = _platoonNumber + 1;
            [_radioType, "default", _channelNumber+_channelMax, _description, _channelText] call acre_api_fnc_setPresetChannelField;
        }; 
    };
} forEach _radioChannelName;

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

//[""] call MIV_fnc_log;
