/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

//format: [ ["name (str)", _uniform (str), _helmet (str), _vest (str), _backPack (str), _backPackLittle (str), _useBigBackPack (bool), setVariable ([str or empty])]]
private _activeRoleList = [
    ["Líder", "", "", "", "", "", true, []],
    ["Sub Líder", "", "", "", "", "", true, []],
    ["Líder Pelotón", "", "", "", "", "", true, []],
    ["Sub Líder Pelotón", "", "", "", "", "", true, []],
    ["Líder Escuadra 1", "", "", "", "", "", true, []],
    ["Sub Líder Escuadra 1", "", "", "", "", "", true, []],
    ["Líder Escuadra 2", "", "", "", "", "", true, []],
    ["Sub Líder Escuadra 2", "", "", "", "", "", true, []],
    ["Líder Escuadra 3", "", "", "", "", "", true, []],
    ["Sub Líder Escuadra 3", "", "", "", "", "", true, []],
    ["Líder FOG", "", "", "", "", "", true, []],
    ["Sub Líder FOG", "", "", "", "", "", true, []],
    ["Ametrallador M240", "", "", "", "", "", true, []],
    ["Ametrallador M249", "", "", "", "", "", true, []],
    ["Amunicionador", "", "", "", "", "", true, []],
    ["Francotirador", "", "", "", "", "", true, []],
    ["Fusilero", "", "", "", "", "", false, []],
    ["Fusilero RA", "", "", "", "", "", false, []],
    ["Granadero", "", "", "", "", "", true, []],
    ["Granadero Nocturno", "", "", "", "", "", true, []],
    ["Ingeniero", "", "", "V_PlateCarrierIAGL_oli", "acfaa_Carryall_multicam", "", true, [["ACE_IsEngineer", 1, true], ["ACE_isEOD", true, true]]],
    ["Lanzador AA", "", "", "", "", "", true, []],
    ["Lanzador AT", "", "", "", "", "", true, []],
    ["Piloto", "arga_u_coverall_verde_liso", "arga_cas_helicoptero_abierto", "", "arga_m_asalto_negro_liso", "", false, [["ACE_GForceCoef",0.4]]],
    ["Tirador FAL", "", "", "", "", "", true, []],
    ["Tirador MK11", "", "", "", "", "", true, []],
    ["Médico", "", "", "", "", "", true, [["ace_medical_medicClass", 2, true]]],
    ["Enfermero", "", "", "", "", "", false, [["ace_medical_medicClass", 2, true]]]
];

_activeRoleList

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
