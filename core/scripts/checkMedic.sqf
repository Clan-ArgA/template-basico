
assignMedicPermission = {
    private _playerRoleDescription = toLower (roleDescription player);
    private _AceMedic = "";


    if (_playerRoleDescription find "enferm" != -1) then {
        _AceMedic = 1; // Enfermero
    } else {
        if (_playerRoleDescription find "dic" != -1) then {

            _AceMedic = 2; // Médico
        } else {
            _AceMedic = 0; // None
        };
    };


    player setVariable ["ace_medical_medicClass", _AceMedic, true];
};

assignEngiPermission = {
    private _playerRoleDescription = toLower (roleDescription player);
    private _AceInge = "";
    private _check = "";


    if (_playerRoleDescription find "inge" != -1) then {

        _AceInge = 2;
        _check = true; // Ingeniero maestro
    } else {
            _AceInge = 0; // None
            _check = false;
    };


    player setVariable ["ace_isEngineer", _AceInge, true];
    player setUnitTrait ["explosiveSpecialist", _check];
};

[] spawn assignMedicPermission;
[] spawn assignEngiPermission;