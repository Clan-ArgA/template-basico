/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

private _enableLogSystem = getMissionConfigValue ["ENABLE_LOG_SYSTEM", 0] == 1;
private _enableLogSystemOnlyDedicated = getMissionConfigValue ["ENABLE_LOG_SYSTEM_ONLY_DEDICATED", 0] == 1;

(_enableLogSystem && (!_enableLogSystemOnlyDedicated || isDedicated && _enableLogSystemOnlyDedicated));

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
