/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _colorTheme = getMissionConfigValue ["TEMA_CORRECCION_COLOR",  ""];
private _colorCorrection = True;

while {_colorCorrection} do {
    _colorTheme call compile preprocessFileLineNumbers "core\scripts\correction_color.sqf";
    sleep 1;
	_colorCorrection = getMissionConfigValue ["CORRECION_COLOR",  0] == 1;
	_colorTheme = getMissionConfigValue ["TEMA_CORRECCION_COLOR",  ""];
}


/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/