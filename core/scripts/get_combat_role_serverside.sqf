/*******************************************************************************
           -- Test script slots misiónes no oficiales by Zeller -- v3.0
                          Sólo muestra bando BLUFOR
*******************************************************************************/
[] spawn {

    uiSleep 20; // Delay para que carguen los nombres de los grupos

    private _allSlots = playableUnits;  // Obtiene un array de todos los slots con la IA activada y/o un jugador en el mismo 
    private _allBluforGroups = groups blufor; // Obtiene un array de todos los grupos BLUFOR tengan o no jugadores 

    private _filteredGroups = _allBluforGroups select { // Obtiene un array de todos los grupos BLUFOR QUE TENGAN JUGADORES
    private _groupUnits = units _x;
    _groupUnits findIf { _x in _allSlots } >= 0
    };

    private _index = 0; // Inicializa index de slots 
    private _currentGroup = ""; // Usado más adelante para comparación de primer grupo para dejar 10 index reservados entre grupos 
    private _worldSize = worldSize; // Toma el ancho del mapa en teoría los mapas de arma 3 tienen alto igual a ancho    

    missionNameSpace setVariable ["GVAR_ARGAIndexTardios", -10, true]; // Inicializa variable global de indice tardíos a -10

    private _markerColors = [ // Array de colores 
        "ColorBrown", // Primer grupo 
        "ColorRed",   // Segundo etc etc etc
        "ColorBlue", 
        "ColorGreen", 
        "ColorYellow", 
        "ColorGrey", 
        "ColorOrange", 
        "ColorKhaki", 
        "ColorPink" 
    ]; 

    { 
        private _group = group _x; // Obtiene el objeto del grupo de la unidad _x 
        private _groupId = groupId _group; // Obtiene el identificador del grupo como cadena 

        // Determina el color del grupo según array de colores
        private _groupIndex = _filteredGroups find _group; 
        private _color = if (_groupIndex >= 0 && _groupIndex < count _markerColors) then { 
            _markerColors select _groupIndex; 
        } else { 
            "ColorBlack"; 
        }; 

        // Si cambia el grupo, salta el índice en 10 y crea un marcador para el nombre del grupo
        if (_groupId != _currentGroup) then { 
            _index = _index + 10; 
            _currentGroup = _groupId; 

            // Crea marcador con el nombre del grupo
            private _groupMarkerPos = [_worldSize + 300, _worldSize - ((_index - 1) * 100), 0]; 
            private _MarkerGrupo = format ["_USER_DEFINED_ARGA_%1/-1", _groupId]; // Nombre único de marcador
            createMarkerLocal [_MarkerGrupo, _groupMarkerPos]; 
            _MarkerGrupo setMarkerTextLocal (toUpper _groupId); // Nombre del grupo en mayúsculas
            _MarkerGrupo setMarkerTypeLocal "mil_box_noShadow"; // Ícono cuadrado de grupo
            _MarkerGrupo setMarkerSizeLocal [0.5, 0.5]; // Tamaño del cuadradito
            _MarkerGrupo setMarkerColor _color; // Color del grupo    ULTIMA ORDEN GLOBAL PARA DISMINUIR BROADCAST 

            missionNamespace setVariable [format ["GVAR_ARGA_GRUPO_COLOR_%1", _groupId], _color, true]; // Guarda una variable con el color del grupo 
        };  // ASIGNA COLORES SOLO A GRUPOS CON GENTE ADENTRO ANTES DE PANTALLA DE MAPA

        // Asigna número de slot a cada jugador temprano
        _x setVariable ["GVAR_SLOT_ARGA_NUMERO", _index, true]; 

        // Incrementa índice para el siguiente loop 
        _index = _index + 1; 
    } forEach _allSlots; 
};
