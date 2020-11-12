/*******************************************************************************
                          Realizado por |ArgA|Vultur|Cbo¹
*******************************************************************************/

params [["_authorUID",""]];

["UIDs:",_authorUID,getPlayerUID player,count _authorUID] call MIV_fnc_log;

if (hasInterface && (getPlayerUID player == _authorUID || _authorUID == "")) then {
	private _text = "<t align='left'>";
	_text = format["%1<t color='#FF0000' align='left' size = '1'>El template básico esta descatualizado</t><br/><br/>",_text];
	//_text = format["%1<t color='#ffffff' size = '.6'></t><br/>",_text];
	_text = format["%1<t color='#ffffff' size = '1'>Actualicelo por favor</t><br/><br/>",_text];
	//_text = format["%1<t color='#ffffff' size = '.6'></t><br/>",_text];
	_text = format["%1<t color='#FF0000' size = '1'>El template básico esta descatualizado</t>",_text];
	_text = format["%1</t>",_text];

	for "_i" from 1 to 2 do {
		[_text,0.3,0.4,60,1,0] spawn BIS_fnc_dynamicText;
		sleep 90;
	};	
};


/*******************************************************************************
                          Realizado por |ArgA|Vultur|Cbo¹
*******************************************************************************/