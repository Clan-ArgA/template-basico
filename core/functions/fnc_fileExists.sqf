/*******************************************************************************
                            Realizado por |ArgA|MIV
*******************************************************************************/

params ["_fileName"];

private _existsFile = True;
private _fileLoaded = "";

try{
	_fileLoaded = loadFile _fileName; }
catch{ 
	_existsFile = False;
};

if (_fileLoaded == "") then { _existsFile = False; };

_existsFile

/*******************************************************************************
                            Realizado por |ArgA|MIV
*******************************************************************************/