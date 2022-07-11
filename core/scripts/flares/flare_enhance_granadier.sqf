// by ALIAS
// Flare Fix DEMO
// Tutorial bengalas granadero: https://www.youtube.com/watch?v=O4b69Rm7EVc
// Tutorial bengalas mortero: https://www.youtube.com/watch?v=4fPLtzsEtTs

// Este efecto mejora iluminación de las bengalas vanilla.
// Las bengalas de los MODs ya viene mejoradas

/*******************************************************************************
                             Modificado por |ArgA|MIV
*******************************************************************************/

private ["_shooter","_color_flare","_flare_light","_flare_brig","_inter_flare","_int_mic","_flare","_type_flares"];

if (!hasInterface) exitWith {};

private _flare_intensity         = getMissionConfigValue ["MIV_FLARE_INTENSITY",  30];
private _flare_range             = getMissionConfigValue ["MIV_FLARE_RANGE",  200];

_flare = _this select 0;

// you need to list in array bellow the class names for flares you want to alter
_type_flares = ["F_40mm_White","F_40mm_Red","F_40mm_Yellow","F_40mm_Green"];

private _mortar_flare_on = false;
	
if ((typeOf _flare) in _type_flares) then {
	
	switch (typeOf _flare) do {
		case "F_40mm_White": {/*hint "White Flare";*/_color_flare = [0.7,0.7,0.8]};
		case "F_40mm_Red": { /*hint "Red Flare";*/_color_flare = [0.7,0.15,0.1] };
		case "F_40mm_Yellow": {/* hint "Yellow Flare";*/_color_flare = [0.7,0.7,0] };
		case "F_40mm_Green": { /*hint "Green Flare"*/;_color_flare = [0.2,0.7,0.2] };
	};
	sleep 3;
	
	_flare_light = "#lightpoint" createVehicle getPosATL _flare;  
	_flare_light setLightAmbient _color_flare;  
	_flare_light setLightColor _color_flare;
	_flare_light setLightIntensity _flare_intensity;
	_flare_light setLightUseFlare true;
	_flare_light setLightFlareSize 10;
	_flare_light setLightFlareMaxDistance 2000;
	_flare_light setLightAttenuation [/*start*/ _flare_range, /*constant*/1, /*linear*/ 100, /*quadratic*/ 0, /*hardlimitstart*/50,/* hardlimitend*/_flare_range - 10]; 
	_flare_light setLightDayLight true;

	_inter_flare = 0;
	
	while {!isNull _flare} do {
		_int_mic = 0.05 + random 0.01;
		sleep _int_mic;
		_flare_brig = _flare_intensity + random 10;
		_flare_light setLightIntensity _flare_brig;
		_inter_flare = _inter_flare + _int_mic;
		_flare_light setpos (getPosATL _flare);
	};
};

/*******************************************************************************
                             Modificado por |ArgA|MIV
*******************************************************************************/