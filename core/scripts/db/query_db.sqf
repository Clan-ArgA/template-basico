/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

/*
Ejecuta una consulta SQL en el protocolo registrado por init_db.sqf.
Recibe: string con la consulta.
Devuelve: el array de extDB3, [1, datos] si salio bien o [0, "mensaje"] si fallo.

Si el script puede suspenderse usa "2:" (asincronico) y espera el resultado con
"4:"/"5:", sin bloquear el juego. Si no puede, usa "0:" (sincronico).
La espera asincronica se corta despues de 600 ciclos de uiSleep 0.1 (al menos 60 s).
*/

params [["_query", "", [""]]];

private _canSuspend = canSuspend;
private _maxWaitCycles = 0;
if (_canSuspend) then { _maxWaitCycles = 600; };

// Espera a que init_db.sqf termine (la variable no existe hasta entonces).
private _waitCycles = 0;
while { isNil "MIV_DB_READY" && { _waitCycles < _maxWaitCycles } } do {
	uiSleep 0.1;
	_waitCycles = _waitCycles + 1;
};

if (!(missionNamespace getVariable ["MIV_DB_READY", false])) exitWith {
	["query_db: database not ready. QUERY: ", _query] call MIV_fnc_log;
	[0, "Database not ready"]
};

private _callType = if (_canSuspend) then { "2" } else { "0" };
private _raw = "extDB3" callExtension format ["%1:ARGA_LOG_SQL:%2", _callType, _query];

if (_raw isEqualTo "") exitWith { [0, "Empty response from extDB3"] };

private _result = parseSimpleArray _raw;
if (isNil "_result" || { _result isEqualTo [] }) exitWith { [0, "Return value is not compatible with SQF"] };

// [1, datos] o [0, "error"]: resultado directo, no hay nada que esperar.
if (!((_result select 0) isEqualTo 2)) exitWith { _result };

// [2, "id"]: resultado guardado en extDB3 (async, o sync mayor que outputSize).
private _id = _result select 1;

_waitCycles = 0;
_raw = "extDB3" callExtension format ["4:%1", _id];

while { _raw isEqualTo "[3]" && { _waitCycles < _maxWaitCycles } } do {
	uiSleep 0.1;
	_waitCycles = _waitCycles + 1;
	_raw = "extDB3" callExtension format ["4:%1", _id];
};

if (_raw isEqualTo "[3]") exitWith {
	["query_db: timeout. QUERY: ", _query] call MIV_fnc_log;
	[0, "Query timeout"]
};

// [5]: mensaje multiparte, se piden las partes con "5:" hasta recibir "".
private _isMultiPart = _raw isEqualTo "[5]";
if (_isMultiPart) then {
	_raw = "";
	private _part = "extDB3" callExtension format ["5:%1", _id];
	while { !(_part isEqualTo "") } do {
		_raw = _raw + _part;
		_part = "extDB3" callExtension format ["5:%1", _id];
	};
};

if (_raw isEqualTo "") exitWith { [0, "Empty response from extDB3"] };

_result = parseSimpleArray _raw;
if (isNil "_result" || { _result isEqualTo [] }) exitWith {
	["query_db: parse error. multipart ", _isMultiPart] call MIV_fnc_log;
	[0, "Return value is not compatible with SQF"]
};

_result;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
