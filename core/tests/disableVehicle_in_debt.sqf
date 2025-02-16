/*******************************************************************************
                                     ARGA
*******************************************************************************/
params ["_playerUnit", "_didJIP"];
private _access_denial_list = call MIV_fnc_get_access_denial_list;

if (_player_uid in _access_denial_list) then {
player addEventHandler ["GetInMan", {
    params ["_unit", "_role", "_vehicle", "_turret"];
    if (vehicle _unit != _unit) then {
        moveOut _unit;
        _hintText = "<t align='center' color='#FF0000' size='1.5'>No puedes usar vehículos debido a la falta de pago.</t>"; // Big red hint
        [_hintText, 0, 0.5, 5, 0, 0] spawn BIS_fnc_dynamicText;
    };
}];
};
/*******************************************************************************
                                     ARGA
*******************************************************************************/
