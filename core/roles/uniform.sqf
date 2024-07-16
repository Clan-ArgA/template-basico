/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

params ["_uniform_items"];

private _allowGPS = getMissionConfigValue ["GPS", 1] == 1;
private _allowNV  = getMissionConfigValue ["VISION_NOCTURNA", 1] == 1;
private _NVClass  = getMissionConfigValue ["TIPO_VN", "ACE_NVG_Wide"];
private _group    = [_unit] call MIV_fnc_getGroup;
private _watch    = "ItemWatch";

// ["[uniform] _unit:", _unit] call MIV_fnc_log;
// ["[uniform] _uniform_items:", _uniform_items] call MIV_fnc_log;

{
    private _item = _x select 0;
    private _count = _x select 1;
    for "_i" from 1 to _count do {
        _unit addItemToUniform _item;
    };
} forEach _uniform_items;



/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
