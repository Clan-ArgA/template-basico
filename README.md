## Bengalas en morteros

Para que funcione el script de aumento de intensidad de las bengalas en los morteros se debe poner lo siguiente en el init del mortero:
```
this addEventHandler ["Fired",{[[getPosASL (_this select 0), velocity (_this select 6), _this select 4],"core\scripts\flares\mortar_flare_enhance.sqf"] remoteExec ["execVM",0,true]; private _enableFlareEnhance = getMissionConfigValue ["ACTIVAR_BENGALAS_MEJORADAS",  0] == 1; if (_enableFlareEnhance) then {deleteVehicle (_this select 6);};}];```
