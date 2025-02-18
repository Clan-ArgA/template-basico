/*******************************************************************************
           -- Script slots misiónes no oficiales by Zeller -- v3.0
                          Sólo muestra bando BLUFOR
*******************************************************************************/

[] spawn {
uiSleep 50; // Darle tiempo al servidor para que termine de ejecutar el script

private _playerName = profileName;
if ((_playerName find "|") != -1) then {
    _playerName = (_playerName splitString "|") select 1; // Pela las barras y el ARGA del nombre
};

private _group = group player; // Obtiene el objeto del grupo del jugador
private _groupId = groupId _group; // Obtiene el identificador del grupo como cadena
private _slotPosition = player getVariable ["GVAR_SLOT_ARGA_NUMERO", -1]; // Obtiene el número de slot si existe -1 si no existe

private _rolDescription = roleDescription player; // Si encuentra arroba cambia el texto del marcador del grupo
if ((_rolDescription find "@") != -1) then {
    private _groupAt = (_rolDescription splitString "@") select 1; // Selecciona el nombre del grupo después del arroba
    _rolDescription = (_rolDescription splitString "@") select 0; // Limpia el arroba
    private _MarkergroupAt = format ["_USER_DEFINED_ARGA_%1/-1", _groupId]; // Obtiene el nombre asignado por el server
    private _existingMarkerColor = getMarkerColor _MarkergroupAt;  // Verifica si el marcador ya existe usando el color
    if (_existingMarkerColor != "") then { // Si tiene color entonces existe
        private _newText = format ["%1 (%2)", toUpper _groupAt, toUpper _groupId];
        _MarkergroupAt setMarkerText _newText; // Cambia el nombre del marcador de manera global
    };
};

private _YMap = worldSize;
private _XMap = _YMap + 200;
private _markerName = format ["_USER_DEFINED_ARGA_%1/-1", _playerName]; // Nombre único del marcador
private _markerText = format ["%1 (%2)", _playerName, _rolDescription]; // Texto para el marcador

private _groupColor = missionNamespace getVariable [format ["GVAR_ARGA_GRUPO_COLOR_%1", _groupId], "ColorBlack"]; // Color del grupo si existe variable

private _markerPos = [0,0,0];
if (_slotPosition > 0) then {
    // Jugadores tempranos con espacio asignado
    _markerPos = [_XMap, _YMap - (_slotPosition * 50), 0];
} else {
    // Jugadores tardíos sin espacio asignado
    private _IndexLatecomers = missionNamespace getVariable ["GVAR_ARGAIndexLatecomers", 0];
    missionNamespace setVariable ["GVAR_ARGAIndexLatecomers", _IndexLatecomers + 1, true];
    // La actualización de la variable debería manejarla el server pero dudo que 2 jugadores ejecuten esto a la vez y de última sólo se pisan los marcadores
    _markerPos = [_XMap, _YMap - (50 * _IndexLatecomers), 0];
};

// Crear o actualizar un marcador
// Verifica si el marcador ya existe
private _existingMarkerColor = getMarkerColor _markerName;
if (_existingMarkerColor != "") then { // Si tiene color entonces existe
    private _existingMarkerText = markerText _markerName;
    // Si el texto o el color son diferentes por cambio de slot, borra el marcador y crea uno nuevo
    if (_existingMarkerText != _markerText || _existingMarkerColor != _groupColor) then {
        deleteMarker _markerName;
        // Crea el marcador actualizado
        createMarkerLocal [_markerName, _markerPos];
        _markerName setMarkerTextLocal _markerText;
        _markerName setMarkerTypeLocal "mil_dot_noShadow"; // Punto sin sombra, para sombra cambiar a mil_dot
        _markerName setMarkerColor _groupColor;
    };
} else {
    // Si no existe, crea el marcador
    createMarkerLocal [_markerName, _markerPos];
    _markerName setMarkerTextLocal _markerText;
    _markerName setMarkerTypeLocal "mil_dot_noShadow";
    _markerName setMarkerColor _groupColor;
}};
