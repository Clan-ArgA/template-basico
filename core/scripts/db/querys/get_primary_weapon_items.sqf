/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
MIV_MOCK_PRIMARY_WEAPON_ITEMS = compile preprocessFileLineNumbers "core\scripts\db\querys\mocks\mock_get_primary_weapon_items.sqf";

private _is_test = true;
private _primary_weapon_items = [];

if (!_is_test) then {
    hint "es false";
} else {
    _primary_weapon_items = call MIV_MOCK_PRIMARY_WEAPON_ITEMS;
};

_primary_weapon_items

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/