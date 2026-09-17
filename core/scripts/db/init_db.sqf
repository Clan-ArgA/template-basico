/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

/*
Registra una sola vez la conexion a la base y el protocolo SQL de extDB3.
Debe ejecutarse antes de cualquier consulta: extDB3 no permite registrar
protocolos mientras hay consultas asincronicas en curso (Known Issues).
Al terminar deja "MIV_DB_READY" en missionNamespace: true si quedo lista, false si no.
Mientras no termina, la variable no existe (query_db.sqf espera a que exista).
*/

if (!(call MIV_fnc_isLogSystemEnabled)) exitWith {
	missionNamespace setVariable ["MIV_DB_READY", false];
};

// Acepta [1] o el error que indica que ya estaba registrado (mision reiniciada).
private _fnc_isRegistered = {
	params ["_raw", "_alreadyRegisteredError"];

	if (_raw isEqualTo "") exitWith { false };

	private _result = parseSimpleArray _raw;
	if (isNil "_result") exitWith { false };
	if ((_result select 0) isEqualTo 1) exitWith { true };

	(count _result > 1) && { (_result select 1) isEqualTo _alreadyRegisteredError }
};

private _databaseResult = "extDB3" callExtension "9:ADD_DATABASE:Database:arga-log";
["init_db ADD_DATABASE: ", _databaseResult] call MIV_fnc_log;

private _isReady = false;

if ([_databaseResult, "Already Connected to Database"] call _fnc_isRegistered) then {
	private _protocolResult = "extDB3" callExtension "9:ADD_DATABASE_PROTOCOL:arga-log:SQL:ARGA_LOG_SQL:TEXT";
	["init_db ADD_DATABASE_PROTOCOL: ", _protocolResult] call MIV_fnc_log;

	_isReady = [_protocolResult, "Error Protocol Name Already Taken"] call _fnc_isRegistered;
};

missionNamespace setVariable ["MIV_DB_READY", _isReady];

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
