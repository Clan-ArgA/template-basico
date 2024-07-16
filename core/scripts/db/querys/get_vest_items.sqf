/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
MIV_MOCK_VEST_ITEMS = compile preprocessFileLineNumbers "core\scripts\db\querys\mocks\mock_vest_items.sqf";

private _vestItems = [];

if (isDedicated) then {
    hint "TODO: query";
} else {
    _vestItems = call MIV_MOCK_VEST_ITEMS;
};

_vestItems

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/