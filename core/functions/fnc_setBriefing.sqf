/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

private _colorAuthor = getMissionConfigValue ["COLOR_AUTOR", "#76a8f7"];
private _logo = getMissionConfigValue ["IMG_LOGO", "core\imgs\logo.paa"];

params["_recursos", "_enemigos", "_objetivos", "_situation", "_extractodeInteligencia", "_storySituation", "_intel", "_info", "_editores"];

if (count _intel > 0) then {
  private _imagesSection = "";
  {
    _x params ["_name", "_caption"];
    private _imageTag = format ["<img image='%1' width='400' height='225'/>", _name];
    private _captionTag = format ["<p align='center'><font face='RobotoCondensed' color='#ffffff' size='20'>%1</font></p>", _caption];
    _imagesSection = format ["%1<br/>%2<br/>%3<br/>", _imagesSection, _imageTag, _captionTag];
  } forEach _intel;
  player createDiaryRecord ["Diary", ["Imagenes", _imagesSection]];
};

player createDiaryRecord["Diary", ["Editores", "<br/><p align='center'><font color='"+_colorAuthor+"' size='28'>"+_editores+"</font></p><br/><img image= '"+_logo+"' width='323' height='323'/><br/>"]];

player createDiaryRecord["Diary", ["Nuestros Recursos", ([_recursos, true] call MANDI_fnc_makeInfo)]];

player createDiaryRecord["Diary", ["Fuerzas Enemigas", ([_enemigos, true] call MANDI_fnc_makeInfo)]];

player createDiaryRecord["Diary", ["Objetivos", ([_objetivos, true] call MANDI_fnc_makeInfo)]];

if((_extractodeInteligencia select 0) != "") then {
  player createDiaryRecord["Diary", ["Extracto de Inteligencia", ([_extractodeInteligencia, false] call MANDI_fnc_makeInfo)]];
};

if((_situation select 0) != "") then {
  player createDiaryRecord["Diary", ["Situaci"+toString[243]+"n", ([_situation, false] call MANDI_fnc_makeInfo)]];
};

if((_storySituation select 0) != "") then {
  player createDiaryRecord["Diary", ["Situaci"+toString[243]+"n hist"+toString[243]+"rica", ([_storySituation, false] call MANDI_fnc_makeInfo)]];
};
player createDiaryRecord["Diary", ["Informaci"+toString[243]+"n", ([_info, true] call MANDI_fnc_makeInfo)]];

true;
/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/
