/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

enableDebugConsole = 1;

allowFunctionsLog = 1;

//disableChannels[]={{0, true, true}, {1, true, true}, {2, true, true},{3, false, true}, {4, true, true}, {6, true, true}};

respawnOnStart = 0;

class Header {
    gameType=coop;
    minPlayers=1;
};

// Garbage collector
// https://community.bistudio.com/wiki/Description.ext#Corpse_&_Wreck_Management

corpseManagerMode = RECOLECTOR_BASURA_HOMBRES;
corpseLimit = 0;
corpseRemovalMinTime = RB_TIEMPO_ESPERA_HOMBRES;

weaponholderManagerMode = RECOLECTOR_BASURA_ARMAS;
weaponholderLimit = 0;
weaponholderRemovalMinTime = RB_TIEMPO_ESPERA_ARMAS;

wreckManagerMode = RECOLECTOR_BASURA_VEHICULOS;
wreckLimit = 0;
wreckRemovalMinTime = RB_TIEMPO_ESPERA_VEHICULOS;

minPlayerDistance = RB_DISTANCIA_JUGADORES;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/