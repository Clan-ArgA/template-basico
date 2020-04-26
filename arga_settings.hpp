/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

#define NAME "Op. "                     // Colocar nombre de mision
#define IMAGE "imgs\"                   // Colocar nombre y extension de la imagen de portada, ej "imgs\portada.jpg"
#define DESCRIPTION ""                  // Colocar descripcion de la mision entre las comillas

author = "";                            // Editor
onLoadName = NAME;	                    // Nombre de carga
briefingName = NAME;                    // Nombre en briefing
onLoadMission = DESCRIPTION;            // Pie de carga
overviewText = DESCRIPTION;             // Pie en seleccion de mision
overviewPicture = IMAGE;                // Imagen en seleccion de mision
loadScreen = IMAGE;                     // Imagen en carga
IMG_LOGO = "imgs\logo.paa"              // Nota: Las imagenes deberian estar en
COLOR_AUTOR = "#76a8f7";                // formato .paa y en proporcion 2x1 (1024x512)
ES_CAMPANIA = 0;                        // tamaño logo: 323px x 323px
NOMBRE_CAMPANIA = "";
INTRO = 2                               // Intros: 1 y 2. Para desactivar: 0
MAX_DIST_VISION = 4000;
GAFAS_INICIALES = "";
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "No Oficial";
HORARIO = "";
FECHA = "";
CLIMA = "";
UBICACION = "";
SITUACION = [""];               
SITUACION_HISTORICA = [""];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["", ""];
RECURSOS = ["", ""];
ENEMIGOS = ["", ""];
////////////////////////////////////////////////////////////////////////////////

//IA - CONFIGURACION
DESACTIVAR_IA_DE_GRUPO = 1; // 0 Permite la IA del Grupo de los jugadores, 1 la desactiva.
DESACTIVAR_TODO_BLUFOR = 0; // 0 Permite la IA del Blufor, 1 la desactiva.
DIFICULTAD_IA_PERSONALIZADA = 0;
AIMING_ACCURACY = 0.01; //precision de apuntado
AIMING_SHAKE = 0.99; 	//dispersión de apuntado
AIMING_SPEED = 0.1; 	//velocidad de apuntado
SPOT_DISTANCE = 0.3; 	//distancia de avistamiento
SPOT_TIME = 0.5; 		//tiempo de avistamiento
COURAGE = 0.25; 		//coraje
RELOAD_SPEED = 0.25; 	//velocidad de recarga
COMMANDING = 0.75; 		//liderazgo
////////////////////////////////////////////////////////////////////////////////

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/
