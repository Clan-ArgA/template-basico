assignRolePermissions = {
    private _playerRoleDescription = toLower (roleDescription player);

    // Assign Medic Permissions
    private _AceMedic = 0; // Default to no medical role
    if (_playerRoleDescription find "enfermero" != -1) then {
        _AceMedic = 1; // Enfermero
    } else {
        if (_playerRoleDescription find "medico" != -1) then {
            _AceMedic = 2; // Médico
        };
    };
    player setVariable ["ace_medical_medicClass", _AceMedic, true];

    // Assign Engineer Permissions
    private _AceIngeniero = 0; // Default to no engineer role
    private _check = false; // Default to no explosive specialist trait
    if (_playerRoleDescription find "ingeniero" != -1 || _playerRoleDescription find "eod" != -1) then {
        _AceIngeniero = if (_playerRoleDescription find "ingeniero" != -1) then { 2 } else { 1 }; // Master or Regular Engineer
        _check = true; // Enable explosive specialist trait
    };
    player setVariable ["ace_isEngineer", _AceIngeniero, true];
    player setUnitTrait ["explosiveSpecialist", _check];
};

// Execute the function
[] spawn assignRolePermissions;
