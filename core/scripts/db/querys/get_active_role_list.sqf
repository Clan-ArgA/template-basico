/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
MIV_MOCK_ACTIVE_ROLE_LIST = compile preprocessFileLineNumbers "core\scripts\db\querys\mocks\mock_active_role_list.sqf";

private _activeRoleList = [];

if (isDedicated) then {
    hint "es false";
} else {
    _activeRoleList = call MIV_MOCK_ACTIVE_ROLE_LIST;
};

_activeRoleList
/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/