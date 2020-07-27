/*******************************************************************************
                            Realizado por |ArgA|MIV
*******************************************************************************/
/*
	roleDescription, roleList -> Sttri
"_roleList"];

private ["_code", "_roleName"];

private _role = "";

_description = _description call MANDI_fnc_trim;
{  
	_code = _x select 0;  
	_roleName = _x select 1;
	
	// Si no tiene rol asignado elegimos el ID del rol alternativo
	if (_code == "") then {
		_code = _x select 2; 
	};

	if (_description == _roleName) exitWith {
		_role = _code;
	};
} forEach _roleList;

_role

/*******************************************************************************
                            Realizado por |ArgA|MIV
*******************************************************************************/