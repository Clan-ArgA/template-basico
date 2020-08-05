/*******************************************************************************
                          Realizado por https://forums.bohemia.net/forums/topic/226608-simple-convoy-script-release/
*******************************************************************************/

params ["_convoyGroup",["_convoySpeed",50],["_convoySeparation",50]];

_convoyGroup setFormation "COLUMN";

{(vehicle _x) limitSpeed _convoySpeed*1.15} forEach (units _convoyGroup);
(vehicle leader _convoyGroup) limitSpeed _convoySpeed;

while {sleep 10; true} do { 
	{
		(vehicle _x) setConvoySeparation _convoySeparation;
		if (speed vehicle _x < 5) then {
			(vehicle _x) doFollow (leader _convoyGroup);
		};	
	} forEach (units _convoyGroup)-(crew (vehicle (leader _convoyGroup)))-[player]; 
}; 

/*******************************************************************************
                          Realizado por https://forums.bohemia.net/forums/topic/226608-simple-convoy-script-release/
*******************************************************************************/