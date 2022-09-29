/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/

params ["_mortar"];

_mortar setVehicleAmmo 0.0; 
{
    _mortar addmagazine "8Rnd_82mm_Mo_Flare_white"
} forEach [1,2,3,4];

_mortar addEventHandler [
	"Fired",{
		private _file = "core\scripts\flares\mortar_flare_enhance.sqf";
		[[getPosASL (_this select 0), velocity (_this select 6), _this select 4], _file] remoteExec ["execVM",0,true]; 
		private _enableFlareEnhance = getMissionConfigValue ["ACTIVAR_BENGALAS_MEJORADAS",  0] == 1; 
		if (_enableFlareEnhance) then {
			deleteVehicle (_this select 6);
		};
	}
];

/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/
