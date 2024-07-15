/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/

params [
    ["_unit", player], 
    ["_helmet", "arga_cas_combate_bosque_marpat"], 
    ["_backPack", "arga_m_petate_bosque_marpat"], 
    ["_backPackLittle", "arga_m_asalto_bosque_marpat"],
    ["_weapons_items", []], 
    ["_primary_weapon_items", []], 
    ["_secondary_weapon_items", []], 
    ["_hand_gun_items", []], 
    ["_vest_items", []], 
    ["_backpack_items", []]
];

private _useBigBackPack = true;
private _back = if (_useBigBackPack) then {_backPack} else {_backPackLittle};

if (!local _unit) exitWith {};

_unit addBackpack _back;
_unit addHeadgear _helmet;


private _items = [
    [_weapons_items, {(_this select 0) addWeapon (_this select 1)}],
    [_primary_weapon_items, {(_this select 0) addPrimaryWeaponItem (_this select 1)}],
    [_secondary_weapon_items, {(_this select 0) addSecondaryWeaponItem (_this select 1)}],
    [_hand_gun_items, {(_this select 0) addHandgunItem (_this select 1)}],
    [_vest_items, {(_this select 0) addItemToVest (_this select 1)}],
    [_backpack_items, {(_this select 0) addItemToBackpack (_this select 1)}]
];

comment "Add items";
{
    if (count _x > 0 && count (_x select 0) > 0) then {
        private _accesory =_x select 0 select 0;
        private _addFunction = _x select 1;
        if (count _accesory > 0) then {
            {
                ["[set_role_items] _x:", _x] call MIV_fnc_log;
                if (count _x > 0) then {
                    private _item = _x select 0;
                    private _count = _x select 1;
                    for "_i" from 1 to _count do {
                        [_unit, _item] call _addFunction;
                    };
                };
            } forEach _accesory;
        };
    };
} forEach _items

/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/
