/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params [["_units", allPlayers]];

if (!(call MIV_fnc_isLogSystemEnabled)) exitWith { };

private ["_query", "_description", "_name", "_newValue"];
private _values =  " ";
_query = "INSERT INTO role_alternative_name (`name`) VALUES";

{
	_description = roleDescription _x;  
	
	if (_description != "") then {
		_description = (roleDescription _x splitString "@") select 0;

		// Las comillas dobles rompen parseSimpleArray al leer la lista de roles:
		// extDB3 encierra los textos entre comillas y no escapa las del dato.
		_name = [_description call MANDI_fnc_trim, """", ""] call MIV_fnc_replaceInString;

		// El apostrofe cierra el string del INSERT (mismo escapado que
		// get_missions_values.sqf:59).
		_name = [_name, "'", "\'"] call MIV_fnc_replaceInString;

		_newValue = format ["('%1')", _name];
			if (_forEachIndex ==  0) then {
			_values = [_values, _newValue] joinString " ";
		} else {
			_values = [_values, _newValue] joinString ",";
		};
	};	
} forEach _units;

_values = _values + ";";

_query = [_query, _values] joinString " ";

_query spawn MIV_fnc_connect_db;


/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

