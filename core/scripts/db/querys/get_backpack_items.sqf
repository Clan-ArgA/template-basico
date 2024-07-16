/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
MIV_MOCK_BACKPACK_ITEMS = compile preprocessFileLineNumbers "core\scripts\db\querys\mocks\mock_get_backpack_items.sqf";

private _backpackItems = [];

if (isDedicated) then {
    hint "es false";
} else {
    _backpackItems = call MIV_MOCK_BACKPACK_ITEMS;
};

_backpackItems

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/