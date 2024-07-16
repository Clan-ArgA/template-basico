/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
GET_EQUIPMENT_BY_ROLE = compile preprocessFileLineNumbers 'core\roles\get_equipment_by_role.sqf';

params [
    "_role", 
    ["_weapons_items", []], 
    ["_primary_weapon_items", []], 
    ["_secondary_weapon_items", []], 
    ["_hand_gun_items", []], 
    ["_vest_items", []], 
    ["_backpack_items",  []]
];

private _role_weapons_items          = [];
private _role_primary_weapon_items   = [];
private _role_secondary_weapon_items = [];
private _role_hand_gun_items         = [];
private _role_vest_items             = [];
private _role_backpack_items         = [];

_role_weapons_items =          [_role, _weapons_items]          call GET_EQUIPMENT_BY_ROLE;
_role_primary_weapon_items =   [_role, _primary_weapon_items]   call GET_EQUIPMENT_BY_ROLE;
_role_secondary_weapon_items = [_role, _secondary_weapon_items] call GET_EQUIPMENT_BY_ROLE;
_role_hand_gun_items  =        [_role, _hand_gun_items]         call GET_EQUIPMENT_BY_ROLE;
_role_vest_items =             [_role, _vest_items]             call GET_EQUIPMENT_BY_ROLE;
_role_backpack_items =         [_role, _backpack_items]         call GET_EQUIPMENT_BY_ROLE;

[
    _role_weapons_items, 
    _role_primary_weapon_items, 
    _role_secondary_weapon_items, 
    _role_hand_gun_items, 
    _role_vest_items, 
    _role_backpack_items
]

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

// ["[get_role_equipment_items] _weapons_items:", _weapons_items] call MIV_fnc_log;
// ["[get_role_equipment_items] _primary_weapon_items:", _primary_weapon_items] call MIV_fnc_log;
// ["[get_role_equipment_items] _secondary_weapon_items:", _secondary_weapon_items] call MIV_fnc_log;
// ["[get_role_equipment_items] _hand_gun_items:", _hand_gun_items] call MIV_fnc_log;
// ["[get_role_equipment_items] _vest_items:", _vest_items] call MIV_fnc_log;
// ["[get_role_equipment_items] _backpack_items:", _backpack_items] call MIV_fnc_log;

// ["[get_role_equipment_items] _role_weapons_items:", _role_weapons_items] call MIV_fnc_log;
// ["[get_role_equipment_items] _role_primary_weapon_items:", _role_primary_weapon_items] call MIV_fnc_log;
// ["[get_role_equipment_items] _role_secondary_weapon_items:", _role_secondary_weapon_items] call MIV_fnc_log;
// ["[get_role_equipment_items] _role_hand_gun_items:", _role_hand_gun_items] call MIV_fnc_log;
// ["[get_role_equipment_items] _role_vest_items:", _role_vest_items] call MIV_fnc_log;
// ["[get_role_equipment_items] _role_backpack_items:", _role_backpack_items] call MIV_fnc_log;
