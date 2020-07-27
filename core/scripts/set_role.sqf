/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _roleList = call MIV_fnc_get_role_list;
private _role = [player, _roleList] call MANDI_fnc_getRole;
private _keepRole = player getVariable ["MIV_KEEP_ROLE", false];
private _equipment = [];

if (!_keepRole) then {
    if (typeName _role != "STRING") then {_role = "desconocido"};
    if (_role == "desconocido" && isDedicated) then { _role = "fusilero"};
    if (_role == "desconocido" && !isDedicated) then { hint "Rol desconocido\nRevisar nombre de rol\nUd. no posee equípo de combate"};
    _role = format['core\roles\%1.sqf',_role];
    _equipment = call compile preprocessFile "core\scripts\init_roles.sqf";
    private _unitRole = [player, _role];
    _unitRole append _equipment;
    _unitRole call compile preprocessFile "core\roles\base.sqf";

};

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/