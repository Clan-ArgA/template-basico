/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

/*
    ACTIVAR_INSIGNIA_AUTOMATICO = 1;    // Añadir a arga_settings
    INSIGNIA_IR = 0;                    // establece si las insignias son IR o normales

    Setee la insignia de condor o yaguar (revisar caso con y sil tilde), en caso de
    no corresponder ninguna escuadra cargar la insignia de arga.

    La insignia de médico tiene prioridad.

    arga_in_visible_arga
    arga_in_visible_condor
    arga_in_visible_yaguar
    arga_in_visible_medico

    arga_in_ir_arga
    arga_in_ir_yaguar
    arga_in_ir_condor

    Junto con esto crear una función get_group con la signatura Unit -> String
    donde los posibles resultados son ["condor", "yaguar", "", nombrePersonalizado]
*/

private _enableAutomatiEnsign = getMissionConfigValue ["ACTIVAR_INSIGNIA_AUTOMATICO",  1] == 1;
private _ensignIR             = getMissionConfigValue ["INSIGNIA_IR",  0] == 1;



/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
