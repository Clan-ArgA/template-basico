/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
params ["_role", "_items"];
    
    if (count _items == 0) exitWith { [] };
    // ["[get_equipment_by_role] _items:", _items] call MIV_fnc_log;
    // Filtra el array _items buscando la entrada que coincide con _role
    private _result = _items select { _x select 0 == _role };
    
    // Verifica si se encontró una entrada y devuelve los elementos correspondientes
    if (count _result > 0) then {
        _result select 0 select [1, count (_result select 0) - 1];
    } else {
        []; // Devuelve un array vacío si no se encuentra el rol
    };

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/