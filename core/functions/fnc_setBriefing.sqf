/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

private _colorAuthor = getMissionConfigValue ["COLOR_AUTOR", "#76a8f7"];
private _logo = getMissionConfigValue ["IMG_LOGO", "core\imgs\logo.paa"];
private _hasIntel = getMissionConfigValue ["HAS_INTEL",""];
private _intelOne = getMissionConfigValue ["Intel_One",""];
private _intelTwo = getMissionConfigValue ["Intel_Two",""];
private _intelThree = getMissionConfigValue ["Intel_Three",""];
private _textOne = getMissionConfigValue ["LeyendaOne",""];
private _textTwo = getMissionConfigValue ["LeyendaOne",""];
private _textThree = getMissionConfigValue ["LeyendaOne",""];

params["_recursos", "_enemigos", "_objetivos", "_situation", "_extractodeInteligencia", "_storySituation", "_info", "_editores"];

player createDiaryRecord["Diary", ["Editores", "<br/><p align='center'><font color='"+_colorAuthor+"' size='28'>"+_editores+"</font></p><br/><img image= '"+_logo+"' width='323' height='323'/><br/>"]];

//Add when generalizable

if ((_hasIntel == "0")) then {};

if ((_hasIntel == "1")) then
{player createDiaryRecord["Diary", ["Intel", "<br/><p align='center'><font color='#ffffff' size='12'>"+_textOne+"</font></p><br/><br/><img image= '"+_IntelOne+"' width='400' height='225'/><br/>"]];};

if ((_hasIntel == "2")) then
{
player createDiaryRecord["Diary", ["Intel", "<br/><p align='center'><font color='#ffffff' size='12'>"+_textOne+"</font></p><br/><br/><img image= '"+_IntelTwo+"' width='400' height='225'/><br/>"]];
player createDiaryRecord["Diary", ["Intel", "<br/><p align='center'><font color='#ffffff' size='12'>"+_textTwo+"</font></p><br/><br/><img image= '"+_IntelOne+"' width='400' height='225'/><br/>"]];
};

if ((_hasIntel == "3")) then
{
player createDiaryRecord["Diary", ["Intel", "<br/><p align='center'><font color='#ffffff' size='12'>"+_textOne+"</font></p><br/><br/><img image= '"+_IntelThree+"' width='400' height='225'/><br/>"]];
player createDiaryRecord["Diary", ["Intel", "<br/><p align='center'><font color='#ffffff' size='12'>"+_textTwo+"</font></p><br/><br/><img image= '"+_IntelOne+"' width='400' height='225'/><br/>"]];
player createDiaryRecord["Diary", ["Intel", "<br/><p align='center'><font color='#ffffff' size='12'>"+_textThree+"</font></p><br/><br/><img image= '"+_IntelTwo+"' width='400' height='225'/><br/>"]];
};

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
