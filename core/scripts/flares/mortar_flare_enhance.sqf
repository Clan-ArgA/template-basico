/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

if (!hasInterface) exitWith {};

MIV_MortarShellPosition = compile preprocessFileLineNumbers "core\scripts\flares\mortar_shell_position.sqf";

params ["_mortar_position", "_shell_velocity", "_mortar_round_name"];

private _enableFlareEnhance      = getMissionConfigValue ["ACTIVAR_BENGALAS_MEJORADAS",  0] == 1; 
if (!_enableFlareEnhance) exitWith {};

private _mortar_flare_intensity  = getMissionConfigValue ["MIV_MORTAR_FLARE_INTENSITY",  100];
private _mortar_flare_range      = getMissionConfigValue ["MIV_MORTAR_FLARE_RANGE",  450];
private _fallSpeed			     = getMissionConfigValue ["MIV_MORTAR_FALL_SPEED",  10];
private _flight_time		     = getMissionConfigValue ["MIV_MORTAR_FLIGHT_TIME",  8];

private ["_color_flare","_flare_light","_flare_brig","_inter_flare","_int_mic","_al_flare","_type_flares"];
private ["_dummy_flare","_flare_explode_position"];

_type_flares = ["Flare_82mm_AMOS_White","8Rnd_82mm_Mo_Flare_white"];

if (_mortar_round_name in _type_flares) then {

	sleep _flight_time;
	
	_flare_explode_position = [_mortar_position, _shell_velocity] call MIV_MortarShellPosition;
	_color_flare = [1,1,1];
	
	_dummy_flare = "F_40mm_White" createVehicle _flare_explode_position, [], 0, "CAN_COLLIDE";
	_dummy_flare setVelocity [wind select 0, wind select 1, _fallSpeed];
	
	sleep 3;
	_flare_light = "#lightpoint" createVehicle getPosATL _dummy_flare, [], 0, "CAN_COLLIDE";
	_flare_light attachTo [_dummy_flare, [0,0,0]];
	_flare_light setLightAmbient _color_flare;  
	_flare_light setLightColor _color_flare;
	_flare_light setLightIntensity _mortar_flare_intensity;
	_flare_light setLightUseFlare true;
	_flare_light setLightFlareSize 10;
	_flare_light setLightFlareMaxDistance 2000;
	_flare_light setLightAttenuation [/*start*/ _mortar_flare_range, /*constant*/1, /*linear*/ 100, /*quadratic*/ 0, /*hardlimitstart*/50,/* hardlimitend*/_mortar_flare_range-10]; 
	_flare_light setLightDayLight true;

	_inter_flare = 0;
	
	while {!isNull _dummy_flare} do {
		_int_mic = 0.05 + random 0.01;
		sleep _int_mic;
		_flare_brig = _mortar_flare_intensity + random 10;
		_flare_light setLightIntensity _flare_brig;
		_inter_flare = _inter_flare + _int_mic;
	};
	deleteVehicle _flare_light;
};

/*******************************************************************************
                             Adaptado por |ArgA|MIV
*******************************************************************************/

