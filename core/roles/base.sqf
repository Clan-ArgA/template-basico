/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
MIV_GET_ROLE_EQUPMENT_ITEMS = compile preprocessFileLineNumbers "core\roles\get_role_equipment_items.sqf";
//MIV_SET_ROLE_EQUPMENT       = compile preprocessFileLineNumbers "core\roles\set_role_equipment.sqf"
MIV_SET_ROLE_ITEMS          = compile preprocessFileLineNumbers "core\roles\set_role_items.sqf";

params [
  ["_unit", player], 
  "_role", 
  ["_uniform", "arga_u_gen3_bosque_marpat"], 
  ["_helmet", "arga_cas_combate_bosque_marpat"], 
  ["_vest", "arga_c_pesado_bosque_marpat"], 
  ["_backPack", "arga_m_petate_bosque_marpat"], 
  ["_backPackLittle", "arga_m_asalto_bosque_marpat"],
  "_uniform_items", 
  "_weapons_items", 
  "_primary_weapon_items", 
  "_secondary_weapon_items", 
  "_hand_gun_items", 
  "_vest_items", 
  "_backpack_items"
];

if (!local _unit) exitWith {};

private _enableAcreSetup     = getMissionConfigValue ["SETUP_PERSONALIZADO_RADIOS",  1] == 1;
private _rolesNeedingPlatoon = parseSimpleArray getMissionConfigValue ["ROLES_NEEDING_PLATOON", '[]'];
private _enableHALO          = getMissionConfigValue ["HALO",  1] == 1;
private _roleInList          = "";
private _roleWithPlatoon     = _role;
private _scuadLeader         = [["lider_escuadra",["lider_escuadra_1","lider_escuadra_2","lider_escuadra_3","lider_fog"]],["sublider_escuadra",["sublider_escuadra_1","sublider_escuadra_2","sublider_escuadra_3","sublider_fog"]]];
private _items               = [];
private _roleInList          = ( _rolesNeedingPlatoon select {_role isEqualTo _x }) select 0;

// ["[BASE] Role:",_role] call MIV_fnc_log;

if (!isNil "_roleInList") then {
  //["[BASE] roleInList:", _roleInList] call MIV_fnc_log;
  _roleWithPlatoon = [player, _role] call MIV_fnc_addPlatoonToRole;
};

[_unit,_role,_uniform,_helmet, _vest,_backPack, _backPackLittle] call compile preprocessFileLineNumbers "core\roles\set_role_equipment.sqf";

if (_role isEqualTo _roleWithPlatoon) then {
  private _rankRole = (( _scuadLeader select {_role in (_x select 1) } ) select 0) select 0;
  if (!isNil "_rankRole") then {_roleWithPlatoon = _rankRole};  
};
//["[BASE] roleWithPlatoon:",_roleWithPlatoon] call MIV_fnc_log;

if (!isNil "_roleWithPlatoon") then {
  // ["[BASE] roleWithPlatoon:",_roleWithPlatoon] call MIV_fnc_log;
  _roleEquipment = [_role];
  _roleEquipment append [_uniform_items];
  _roleEquipment append [_weapons_items];
  _roleEquipment append [_primary_weapon_items];
  _roleEquipment append [_secondary_weapon_items];
  _roleEquipment append [_hand_gun_items];
  _roleEquipment append [_vest_items];
  _roleEquipment append [_backpack_items];

  _items = _roleEquipment call MIV_GET_ROLE_EQUPMENT_ITEMS;
  ["[BASE] _items:", _items] call MIV_fnc_log;
  [_unit, _items] call MIV_SET_ROLE_ITEMS;
};

if (_enableHALO) then {
  ["core\scripts\halo.sqf"] remoteExec ["BIS_fnc_execVM", owner _unit, false];
};

sleep 5;

if (_enableAcreSetup) then {
  //["[BASE]",_unit,_role] call MIV_fnc_log;
  [[_unit,_role],"core\scripts\setup_ACRE2_channels.sqf"] remoteExec ["BIS_fnc_execVM", owner _unit, false];
};

/*******************************************************************************
                          Realizadoor |ArgA|MIV
*******************************************************************************/
