/*******************************************************************************
                            Realizado por |ArgA|MIV
*******************************************************************************/

_unitIA =  allUnits select {!isPlayer _x};
_unitIa append vehicles;
{
	_x addeventhandler ["Killed", {_this execVM "core\scripts\garbage_collector.sqf"}];
	
} forEach _unitIA;

/*******************************************************************************
                            Realizado por |ArgA|MIV
*******************************************************************************/
