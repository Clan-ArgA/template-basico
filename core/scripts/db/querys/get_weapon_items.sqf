/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
MIV_MOCK_WEAPON_ITEMS = compile preprocessFileLineNumbers "core\scripts\db\querys\mocks\mock_get_weapons_items.sqf";

private _weaponsItems = [];

if (isDedicated) then {
    hint "TODO: query";
} else {
    _weaponsItems = call MIV_MOCK_WEAPON_ITEMS;
};

// ["[get_weapon_items.sqf] _weaponsItems:", _weaponsItems] call MIV_fnc_log;

_weaponsItems

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/