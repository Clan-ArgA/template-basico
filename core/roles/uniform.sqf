/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _allowGPS = getMissionConfigValue ["COLOCAR_GPS",  1] == 1;
private _allowNV  = getMissionConfigValue ["VISION_NOCTURNA",  1] == 1;
private _NVClass  = getMissionConfigValue ["TIPO_VN",  "ACE_NVG_Wide"];
private _group    = [_unit] call MIV_fnc_getGroup;
private _watch    = "ItemWatch";

_unit addItemToUniform "ACRE_PRC343";
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_IR_Strobe_Item";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_Flashlight_XL50";
for "_i" from 1 to 9 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 9 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 3 do {_unit addItemToUniform "adv_aceSplint_splint";};
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};

_unit linkItem "ItemMap";
/*
private _test = str _group;
[_test select 0] call MIV_fnc_log;
/*for "_i" from 0 to (count _test)-1 do {
    ["[str group:]",_test select _i] call MIV_fnc_log;
};*/


//[str _group,str _group == "condor",typeName (str _group) ] call MIV_fnc_log;


if ((str _group) == "condor") then {
    _watch = "ACE_Altimeter";
};

_unit linkItem "ItemCompass";
_unit linkItem _watch;
if (_allowGPS) then {
    _unit linkItem "ItemGPS";
};
if (_allowNV) then {
    _unit linkItem _NVClass;
};

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
