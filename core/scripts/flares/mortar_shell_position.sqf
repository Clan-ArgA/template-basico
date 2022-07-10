/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
params ["_mortar_position", "_shell_velocity"];

private ["_shell_x_velocity", "_shell_y_velocity", "_shell_z_velocity"];
private ["_shell_x_final_position", "_shell_y_final_position", "_shell_z_final_position"];
private ["_shell_final_altitude", "_shell_final_position"];

private _flight_time = getMissionConfigValue ["MIV_MORTAR_FLIGHT_TIME",  8];
private _g = -9.8;  // gravity aceleration en m/s2

_shell_x_velocity = _shell_velocity select 0;
_shell_y_velocity = _shell_velocity select 1;
_shell_z_velocity = _shell_velocity select 2;

_shell_x_final_position = _shell_x_velocity * _flight_time + (_mortar_position select 0);
_shell_y_final_position = _shell_y_velocity * _flight_time + (_mortar_position select 1);
_shell_z_final_position = _g * _flight_time^2 / 2 +  _shell_z_velocity * _flight_time + (_mortar_position select 2);

[_shell_x_final_position, _shell_y_final_position, _shell_z_final_position]

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/