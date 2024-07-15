/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
MIV_MOCK_HAND_GUN_ITEMS = compile preprocessFileLineNumbers "core\scripts\db\querys\mocks\mock_get_hand_gun_items.sqf";

private _is_test = true;
private _handGunItems = [];

if (!_is_test) then {
    hint "es false";
} else {
    _handGunItems = call MIV_MOCK_HAND_GUN_ITEMS;
};

_handGunItems

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/