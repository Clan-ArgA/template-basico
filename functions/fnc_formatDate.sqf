/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

/*
	Recibe una fecha del formato: [2020,7,12,19,59,5]
	Devuelve una string con el formato: "2020-07-12 19:48:22"
*/
params ["_date"];

[format ["DATE: %1", str _date]] call BIS_fnc_logFormat;

if (count _date > 0) then {
	private _format = ["%1-%2-%3 %4:%5:%6"];
	_format append _date;
	_date = format _format;
} else {
	_date = "";
};

_date;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/