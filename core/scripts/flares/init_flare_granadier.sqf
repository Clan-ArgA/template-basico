/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

player addEventHandler ["Fired",{[[_this select 6],"core\scripts\flares\flare_enhance_granadier.sqf"] remoteExec ["execVM",0,true]}];

// FOR vanilla mortars place this line inside their init field.
// this addEventHandler ["Fired",{[[getPosASL (_this select 0), velocity (_this select 6), _this select 4],"core\scripts\flares\mortar_flare_enhance.sqf"] remoteExec ["execVM",0,true]; private _enableFlareEnhance = getMissionConfigValue ["ACTIVAR_BENGALAS_MEJORADAS",  0] == 1; if (_enableFlareEnhance) then {deleteVehicle (_this select 6);};}];

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
