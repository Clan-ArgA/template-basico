/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
if (!(call MIV_fnc_isLogSystemEnabled)) exitWith {[]};

private _query = "SELECT player_uid FROM access_denial_list;";
private _playersInDebtRows = _query call compile preprocessFileLineNumbers "core\scripts\db\connect_db.sqf";
["_playersInDebtRows: ", _playersInDebtRows] call MIV_fnc_log;

private _playersInDebt = [];

// transformar el array de arrays en un array de strings
{
    _playersInDebt pushback (_x select 0);
    
} forEach _playersInDebtRows;

["_playersInDebt: ", _playersInDebt] call MIV_fnc_log;

_playersInDebt;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/