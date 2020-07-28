/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

//private _roleList = call MIV_fnc_get_role_list;

params ["_roleList"];

["_roleList2:",_roleList] call MIV_fnc_log;

private _role = [player, _roleList] call MANDI_fnc_getRole;
private _keepRole = player getVariable ["MIV_KEEP_ROLE", false];
private _equipment = [];

if (!_keepRole) then {
    if (typeName _role != "STRING") then {_role = "desconocido"};
    if (_role == "desconocido" &&  isDedicated) then { _role = "fusilero"};
    if (_role == "desconocido" && !isDedicated) then { hint "Rol desconocido\nRevisar nombre de rol\nUd. No posee equípo de combate"};
    
    _role = format['core\roles\%1.sqf',_role];
    
    _equipment = call MIV_fnc_getEquipment;
    
    private _unitRoleEquipment = [player, _role];
    _unitRoleEquipment append _equipment;

    /* Esto tiene que ser un remoteExec a un script nuevo que llame al core\roles\base y a las dos lineas señaladas en
       el script initPlayerServer (este llamado primero y las otras dos lineas despues, el llamado en el otro script
       hacelo tal cual lo haces aca)*/
    _unitRoleEquipment call compile preprocessFile "core\roles\base.sqf";

    //init_objs_server
    //[[_allStands], "core\scripts\handle_stands.sqf"] remoteExec ["BIS_fnc_execVM", 0, false];

    //de 6 en adelante pasa a la nueva funcion

    /* Mover estas dos lineas al script nuevo*/ 
    player action ["SwitchWeapon", player, player, 100];

    player call MIV_fnc_setInsignia;

};

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/