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


if (count _weapons_items > 0) then{
    {
        private _item = _x select 0;
        private _count = _x select 1;
        for "_i" from 1 to _count do {
            _unit addWeapon _item;
        };
    } forEach (_weapons_items select 0);
};

if (count _primary_weapon_items > 0) then{
    {
        private _item = _x select 0;
        private _count = _x select 1;
        for "_i" from 1 to _count do {
            _unit addPrimaryWeaponItem _item;
        };
    } forEach (_primary_weapon_items select 0);
};

if (count _secondary_weapon_items > 0) then{
    {
        private _item = _x select 0;
        private _count = _x select 1;
        for "_i" from 1 to _count do {
            _unit addSecondaryWeaponItem _item;
        };
    } forEach (_secondary_weapon_items select 0);
};

if (count _hand_gun_items > 0) then{
    {
        private _item = _x select 0;
        private _count = _x select 1;
        for "_i" from 1 to _count do {
            _unit addHandgunItem _item;
        };
    } forEach (_hand_gun_items select 0);
};

if (count _vest_items > 0) then{
    {
        private _item = _x select 0;
        private _count = _x select 1;
        for "_i" from 1 to _count do {
            _unit addItemToVest _item;
        };
    } forEach (_vest_items select 0);
};

if (count _backpack_items > 0) then{
    {
        private _item = _x select 0;
        private _count = _x select 1;
        for "_i" from 1 to _count do {
            _unit addItemToBackpack _item;
        };
    } forEach (_backpack_items select 0);
};

/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/

// private _items = [
//     [_weapons_items, {_this addWeapon _x}],
//     [_primary_weapon_items, {_this addPrimaryWeaponItem _x}],
//     [_secondary_weapon_items, {_this addSecondaryWeaponItem _x}],
//     [_hand_gun_items, {_this addHandgunItem _x}],
//     [_vest_items, {_this addItemToVest _x}],
//     [_backpack_items, {_this addItemToBackpack _x}]
// ];

// comment "Add items";
// {
//     if (count _x > 0 && count (_x select 0) > 0) then {
//         ["[set_role_items] _xxx:", _x] call MIV_fnc_log;
//         private _accesory =_x select 0 select 0;
//         private _addFunction = _x select 1;
//         ["[set_role_items] _accesory:", _accesory] call MIV_fnc_log;
//         if (count _accesory > 0) then {
//             {
//                 ["[set_role_items] _x:", _x] call MIV_fnc_log;
//                 if (count _x > 0) then {
//                     private _item = _x select 0;
//                     private _count = _x select 1;
//                     ["[set_role_items] _item:", _item] call MIV_fnc_log;
//                     ["[set_role_items] _count:", _count] call MIV_fnc_log;
//                     ["[set_role_items] _addFunction:", _addFunction] call MIV_fnc_log;
//                     // for "_i" from 1 to _count do {
//                     //     [_unit, _item] call _addFunction;
//                     // };
//                 };
//             } forEach _accesory;
//         };
//     };
// } forEach _items


