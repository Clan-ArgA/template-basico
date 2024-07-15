/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
MIV_MOCK_UNIFORM_ITEMS = compile preprocessFileLineNumbers "core\scripts\db\querys\mocks\mock_get_uniform_items.sqf";

private _is_test = true;
private _uniformItems = [];

if (!_is_test) then {
    hint "es false";
} else {
    _uniformItems = call MIV_MOCK_UNIFORM_ITEMS;
};

// ["[get_uniform_items.sqf] _uniformItems:", _uniformItems] call MIV_fnc_log;

_uniformItems

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/