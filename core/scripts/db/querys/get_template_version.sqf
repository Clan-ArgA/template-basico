/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

if (!(call MIV_fnc_isLogSystemEnabled)) exitWith {[]};

private _query = "SELECT version_number, version_date FROM version_template ORDER BY id ASC LIMIT 1;";
private _versionList = _query call MIV_fnc_connect_db;

_versionList select 0;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
// ["Funcion: ", !(call MIV_fnc_isLogSystemEnabled)] call MIV_fnc_log;
// ["CONNECTION: ", _result] call MIV_fnc_log;
// ["VERSION_LIST: ", _versionList] call MIV_fnc_log;
