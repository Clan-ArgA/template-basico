/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
//["Funcion: ", !(call MIV_fnc_isLogSystemEnabled)] call MIV_fnc_log;
if (!(call MIV_fnc_isLogSystemEnabled)) exitWith {[]};

// Llamamos a la db
call MIV_fnc_oo_extdb3;

//sleep 2;

private _extdb3 = "new" call OO_EXTDB3;
["setIniSectionDatabase", "Database"] call _extdb3;
["setDatabaseName", "arga-log"] call _extdb3;
["setQueryType", "SQL"] call _extdb3;
_result = "connect" call _extdb3;
//["CONNECTION: ", _result] call MIV_fnc_log;
/////////////////////

private _query = "SELECT version_number, version_date FROM version_template ORDER BY id ASC LIMIT 1;";

private _versionList = ["executeQuery", _query] call _extdb3;

//["VERSION_LIST: ", _versionList] call MIV_fnc_log;

_versionList select 0;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
