/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
MIV_MOCK_SECUNDARY_WEAPON_ITEMS = compile preprocessFileLineNumbers "core\scripts\db\querys\mocks\mock_get_secondary_weapon_items .sqf";

private _secondary_weapon_items  = [];

if (isDedicated) then {
    hint "TODO: query";
} else {
    _secondary_weapon_items  = call MIV_MOCK_SECUNDARY_WEAPON_ITEMS;
};

_secondary_weapon_items 

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
