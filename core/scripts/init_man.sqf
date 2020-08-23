/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params ["_unit"];

if (isNIl "_unit") exitWith { };

if (!isPlayer _unit) exitWith { };

_unit disableAI "PATH";
_unit disableAI "MOVE";
_unit allowDamage false;
_unit action ["SwitchWeapon", _unit, _unit, 100];

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/