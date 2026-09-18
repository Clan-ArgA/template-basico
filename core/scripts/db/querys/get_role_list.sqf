/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
//["Funcion: ", !(call MIV_fnc_isLogSystemEnabled)] call MIV_fnc_log;
if (!(call MIV_fnc_isLogSystemEnabled)) exitWith {[]};

private _query = "SELECT code, name, id FROM role;";

private _roleList = _query call MIV_fnc_connect_db;

//["ROLE_LIST: ", _roleList] call MIV_fnc_log;

private _query = "SELECT role.code, alt.name, alt.id FROM role_alternative_name as alt LEFT JOIN role as role on alt.role_id = role.id;";

private _alternativeList = _query call MIV_fnc_connect_db;

// [format ["ALT LIST: %1", str _alternativeList]] call MIV_fnc_log;

(_roleList + _alternativeList);

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/