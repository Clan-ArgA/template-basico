/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

if (!(call MIV_fnc_isLogSystemEnabled)) exitWith { };

private _query = _this;

// Devuelve los datos si la consulta salio bien, o "" si fallo
// (mismo valor por defecto que usaba OO_EXTDB3 executeQuery).
private _fnc_execute = {
    private _response = _this call MIV_fnc_query_db;
    if ((_response select 0) isEqualTo 1) exitWith { _response select 1 };
    ""
};

private ["_result", "_response"];

if (typeName _query == "ARRAY") then {
    _result = [];
    {
        ["QUERY:", _x] call MIV_fnc_log;
        _response = _x call _fnc_execute;
        ["RESULT", _response] call MIV_fnc_log;
        _result pushBack _response;
    } forEach _query;
} else {
    ["QUERY:", _query] call MIV_fnc_log;
    _result = _query call _fnc_execute;
    ["RESULT:", _result] call MIV_fnc_log;
};

_result;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/