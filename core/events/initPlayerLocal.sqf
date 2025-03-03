/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _maxDistanciaVision      = getMissionConfigValue ["MAX_DIST_VISION", 4000];
private _minDistanciaVision      = getMissionConfigValue ["MIN_DIST_VISION", 800];
private _disableCustomLoadout    = getMissionConfigValue ["EQUIPAMIENTO_PERSONALIZADO", 0] == 0;
private _disableGroupIA          = getMissionConfigValue ["IA_DE_GRUPO", 0] == 0;
private _disableBluforIA         = getMissionConfigValue ["IA_BLUFOR", 1] == 0;
private _enableArtilleryComputer = getMissionConfigValue ["COMPUTADORA_ARTILLERIA",  1] == 1;
private _enablestealthCoef       = getMissionConfigValue ["COEFICIENTES_CAMUFLAJE",  0] == 1;
private _hearingCoef             = getMissionConfigValue ["COEFICIENTE_AUDICION", 1];
private _camouflageCoef          = getMissionConfigValue ["COEFICIENTE_CAMUFLAJE", 1];
private _enableAcreSetup         = getMissionConfigValue ["SETUP_PERSONALIZADO_RADIOS",  1] == 1;
private _enableHALO              = getMissionConfigValue ["HALO",  1] == 1;
private _functionWasCalled       = [player,"core\scripts\init_intro.sqf"] call MIV_fnc_wasFuntionCalled;
private _colorCorrection         = getMissionConfigValue ["CORRECION_COLOR",  0] == 1;
private _enableFlareEnhance      = getMissionConfigValue ["ACTIVAR_BENGALAS_MEJORADAS",  0] == 1;
private _caracter                = getMissionConfigValue ["CARACTER",  ""];


setTerrainGrid 25;

if (hasInterface) then {
  MANDI_ENABLE_DIST = true;
  [_maxDistanciaVision, _minDistanciaVision] execVM "core\scripts\view_distance.sqf";

  execVM "core\scripts\check_view.sqf";
  execVM "core\scripts\assignRole.sqf";

  if (_caracter == "No oficial") then {
    execVM "core\scripts\get_combat_role_clientside.sqf";
  };

  if (!_functionWasCalled) then {
    execVM "core\scripts\init_intro.sqf";
    [[player,"core\scripts\init_intro.sqf"],"core\functions\fnc_setFuntionCalled.sqf"] remoteExec ["BIS_fnc_execVM", 2, false];
  };

  execVM "core\scripts\setBriefing.sqf";
  call MIV_fnc_setInsignia;

  // Deshabilita las opciones de Cargar y Guardar Equipo en el arsenal
  if(_disableCustomLoadout) then {
    [missionNamespace, "arsenalOpened", {
      disableSerialization;
      params ["_display"];
      _display displayAddEventHandler ["keydown", "_this select 3"];
      {
        (_display displayCtrl _x) ctrlShow false
      } forEach [44151, 44150, 44146, 44147, 44148, 44149, 44346];
    }] call BIS_fnc_addScriptedEventHandler;
  };

  doStop player;
  player disableAI "MOVE";
  player action ["SwitchWeapon", player, player, 100];

  if (_enablestealthCoef) then {
    player setUnitTrait ["audibleCoef ",_hearingCoef];
    player setUnitTrait ["camouflageCoef  ",_camouflageCoef];
  };

  if (_enableAcreSetup) then {
    execVM "core\scripts\setup_ACRE2_displays.sqf";
  };

  if (_enableFlareEnhance) then {
    execVM "core\scripts\flares\init_flare_granadier.sqf";
  };
  enableEngineArtillery (_enableArtilleryComputer);
};

// Deshabilita el movimiento de la IA para todas las IA que
// esten en el mismo grupo que un jugador humano
if(_disableGroupIA) then {
  private _units = units (group player);
  {
    if (local _x && !isPlayer _x) then {
      doStop _x;
      _x disableAI "MOVE";
      _x action ["SwitchWeapon", _x, _x, 100];
    };
  }foreach _units;
};

if (_disableBluforIA) then {
  {
    if (side _x == west && local _x && !isPlayer _x) then {
      doStop _x;
      _x disableAI "MOVE";
      _x action ["SwitchWeapon", _x, _x, 100];
    };
  }foreach allUnits;
};

if (_enableHALO) then {
  execVM "core\scripts\halo.sqf";
};

if(!(hasInterface || isDedicated)) then {
    execVM "core\scripts\show_fps.sqf";
};

if(_colorCorrection) then {
    execVM "core\scripts\init_correction_color.sqf";
};

if (!hasInterface and !isServer) then {
  player enableSimulation false;
};

if (_caracter in ["Oficial", "No Oficial", "Entrenamiento reclutas"]) then {
    [missionNamespace, "ArsenalOpened", {
        params ["_display"];

        private _loadButton = _display displayCtrl 44147;
        _loadButton ctrlEnable false;
        _loadButton ctrlSetTooltip localize "str_disabled";
    }] call BIS_fnc_addScriptedEventHandler;
};


/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
