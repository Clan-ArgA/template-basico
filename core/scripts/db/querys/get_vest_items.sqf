/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
MIV_MOCK_VEST_ITEMS = compile preprocessFileLineNumbers "core\scripts\db\querys\mocks\mock_vest_items.sqf";

private _is_test = true;
private _vestItems = [];

if (!_is_test) then {
    hint "es false";
} else {
    _vestItems = call MIV_MOCK_VEST_ITEMS;
};

_vestItems

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/