/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

if (!isDedicated) exitWith { };

params ["_query"];

// Llamamos a la db
call MIV_fnc_oo_extdb3;

private _extdb3 = "new" call OO_EXTDB3;
["setIniSectionDatabase", "Database"] call _extdb3;
["setDatabaseName", "arga-log"] call _extdb3;
["setQueryType", "SQL"] call _extdb3;
_result = "connect" call _extdb3;
[format ["CONNECTION: %1", str _result]] call MIV_fnc_log;
/////////////////////

[format ["QUERY: %1", str _query]] call MIV_fnc_log;

private ["_result", "_response"];

if (typeName _query == "ARRAY") then {
    _result = [];
    {
        _response = ["executeQuery", _x] call _extdb3;
        [format ["RESULT: %1", str _response]] call MIV_fnc_log;
        _result pushBack _response;
    } forEach _query;
} else {
    _result = ["executeQuery", _query] call _extdb3;

    [format ["RESULT: %1", str _result]] call MIV_fnc_log;
};

_result;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/