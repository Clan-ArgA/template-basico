/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

#define NAME "Op. Template Basico"                  // Colocar nombre de mision
#define COMPLETE_NAME "Op. Template Basico v0.9.26" // Nombre y versión de la misión
#define IMAGE "imgs\portada.paa"                    // Colocar nombre y extension de la imagen de portada, ej "imgs\portada.jpg"
#define DESCRIPTION ""                              // Colocar descripcion de la mision entre las comillas

CARACTER = "No Oficial";                            // Tipos válidos: "Oficial", "No Oficial", "Entrenamiento", "Entrenamiento reclutas", "Entrenamiento rol", "Persistentes", "TVT"

author = "ArgA";                                    // Editor (Pone tu nombre)
AUTHOR_UID = [];                                    // Colocar entre las comillas el numero que aparece en la lista de abajo. Si son mas de un autor poner con la forma ["nro 1", "nro 2"]
                                                    // Checho: "76561198831148763", Echazu: "76561198153322025", Fred: "76561198969153208", Hernan: "76561198968787485", Pescador: "76561198216131373", Shigeru: "76561198015789544", Axel: "76561198869072681", Ignacio: "76561198026915573", Joaco: "76561198090717772", Maxi: "76561198091139370", Maxtor: "76561198824233052", Nico: "76561198077670923", Night: "76561198090664588", Nogo: "76561198849038806", Paco: "76561198030163544", Peta: "76561198279642154", Roke: "76561198883929795", Shaggy: "76561198030188168", Vultur: "76561198010777357", Zorro: "76561198027580786"

IMG_LOGO = "imgs\logo.paa";                         // Nota: Las imagenes deberian estar en
COLOR_AUTOR = "#76a8f7";                          // formato .paa y en proporcion 2x1 (1024x512)
ES_CAMPANIA = 0;                                    // tamaño logo: 323px x 323px
NOMBRE_CAMPANIA = "";
INTRO_PERSONALIZADA = 0;                            // 1 Si la deseas cargar una intro personalizada (propia)
                                                    // y en el parametro INTRO la dirección del archivo entre comillas
                                                    // EJ. INTRO_PERSONALIZADA = 1; INTRO = "scripts\intro_propia.sqf";
INTRO = 0;                                          // Intros: 1 y 2. Para desactivar: 0

MAX_DIST_VISION = 3000;
MIN_DIST_VISION = 1000;                             // Distancia de visión reducida por marcador.
EQUIPAMIENTO_PERSONALIZADO = 0;                     // 1: Permite cargar equipamiento guardado en arsenal virtual, 0: No Permite.
COMPUTADORA_ARTILLERIA = 1;                         // 1: Habilita computadora artilleria,0: Desabilita.
ROL_AUTOMATICO = 0;                                 // 1: Habilita la carga de rol al entrar a la misión por descripción de rol. 0: Desabilita.
                                                    // Para verificar que los roles automáticos estan bien escritos activar todas las IAs y entrar.
GPS = 1;                                            // 1: Agrega GPS vanilla en rol automático o caja, 0: Remueve.
VISION_NOCTURNA = 0;                                // 1: Agrega visión nocturna panorámica en rol automático o caja, 0: Remueve.
TIPO_VN = "ACE_NVG_Wide";                           // Tipo de visión nocturna que se va a agregar en rol automático o caja.
HALO = 0;                                           // 1: Guarda en contenido de la mochila y pone un paracaidas en la unidad al inicio de la misión. Al tocar tierra se vuelve a poner la mochila automáticamente. 0: Desactiva
HALO_ALTURA_MINIMA_ACTIVACION = 1000;               // Altura en metros mínima que se le pone un paracaidas si HALO esta activado. Todas las unidades por debajo de esa altura no reciben paracaidas al inicio

INSIGNIA_AUTOMATICA = 1;                            // 1: Añade insignia por pelotón o médica, 0: No Añade.
INSIGNIA_IR = 0;                                    // 1: Coloca insignias IR, 0: Insignias normales.

SETUP_PERSONALIZADO_RADIOS = 1;                     // 1: Activa el setup de las radios de ACRE2, 0: Desactiva.
ACTIVAR_BENGALAS_MEJORADAS = 1;                     // 1: Activa la intensificación de la iluminación de las bengalas, 0: Desactiva.
                                                    // Esto mejora la iluminación de las bengalas vanilla de los granaderos.
                                                    // Para que funcione con las bengalas de los morteros leer el archivo README.md:


/*
     Temas correción de color: (Colocar entre las comillas)

     - Realista
     - Apocalipsis
     - Nightstalkers
     - OFP_Gamma
     - Otoño_Dorado
     - Africa
     - Afghan
     - Medio_Oriente
     - Realidad_Marrón
     - Escala_Grises
     - Frío
     - Apocalipsis
     - Invierno_Azul
     - Invierno_Blanco
     - Mediterraneo
     - Post_Soviético
     - Blanco_Negro
*/
CORRECION_COLOR = 0;                                // 1: Activa la correción de color, 0: Desactiva.
TEMA_CORRECCION_COLOR = "Nightstalkers";

/*
EQUIPAMIENTO
    Camuflajes disponibles:          Tipos disponibles:
       - Bosque                        - Multicam
       - Desierto                      - Marpat
       - Selva                         - Liso
       - Negro

       - Personalizado (se debe ingresar mas abajo la clase del uniforme, chaleco, casco y mochila)
       - No editar (no se le modificara ninguna de las 4 cosas al jugador, solo arma y equipo interno)

         Las opciones Personalizada y No editar pueden llevar a comportamientos inesperados.
         Por lo que el editor queda a cargo de checkear y revisar el correcto funcionamiento.
*/
CAMUFLAJE = ["Bosque", "Multicam"];
UNIFORME_PERSONALIZADO = "";
CASCO_PERSONALIZADO = "";
CHALECO_PERSONALIZADO = "";
MOCHILA_PERSONALIZADO = "";
MOCHILA_CHICA_PERSONALIZADO = "";
////////////////////////////////////////////////////////////////////////////////

/*
BRIEFING
    Cada elemento del array es un parrafo
    Ejemplo: ["Primer parrafo", "Segundo parrafo"]
   INTEL = [["Ruta de Imágen", "Leyenda de Imágen"],["Ruta de Imágen2", "Leyenda de Imágen2"]]; Así con la cantidad de IMGS necesaria
*/
BRIEFING = 1;                                       // 1: Muestra, 0: No muestra
HORARIO = "";
FECHA = "";
CLIMA = "";
UBICACION = "";
SITUACION_HISTORICA = [""];
SITUACION = [""];
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["", ""];
RECURSOS = ["", ""];
ENEMIGOS = ["", ""];
INTEL = [];
////////////////////////////////////////////////////////////////////////////////

/* Borrado de IAs enemigas muertas y vehículos destruidos */
#define RECOLECTOR_BASURA_HOMBRES 1                 // 1: Activa la funcion que borra las IAs muertas. 0: Desactivado.
#define RB_TIEMPO_ESPERA_HOMBRES 120                // Tiempo en segundos de espera para eliminar soldados enemigos.
#define RECOLECTOR_BASURA_VEHICULOS 0               // 1: Activa la funcion que borra los vehículos destruidos. 0: Desactivado.
#define RB_TIEMPO_ESPERA_VEHICULOS 0                // Tiempo en segundos de espera para eliminar vehículos enemigos.
#define RECOLECTOR_BASURA_ARMAS 0                   // 1: Activa la funcion que borra las armas de los muertos. 0: Desactivado.
#define RB_TIEMPO_ESPERA_ARMAS 0                    // Tiempo en segundos de espera para eliminar las armas de los muertos.
#define RB_DISTANCIA_JUGADORES 0                    // Distancia en metros a los jugadores a partir de la cual se borra. 0 desactiva el borrado por distancia
////////////////////////////////////////////////////////////////////////////////

/* Camuflaje */
COEFICIENTES_CAMUFLAJE = 0;                         // 1: Activada. 0: Desactivada.
COEFICIENTE_AUDICION = 1;                           // Valores menores hacen al jugador mas difícil de escuchar. Valores decimales ente 0 y 1.
COEFICIENTE_CAMUFLAJE = 1;                          // Valores menores hacen al jugador mas difícil de detectar. Valores decimales ente 0 y 1.
////////////////////////////////////////////////////////////////////////////////

/* IA - CONFIGURACION */
IA_DE_GRUPO = 0;                                    // 1: No desactiva la IA del Grupo de los jugadores, 0: la desactiva.
IA_BLUFOR = 0;                                      // 1: No desactiva la IA Blufor, 0: la desactiva.
DIFICULTAD_IA_PERSONALIZADA = 0;                    // 1: Activada. 0: Desactivada.
AIMING_ACCURACY = 0.10;                             // Precision de apuntado
AIMING_SHAKE = 0.90; 	                            // Dispersión de apuntado
AIMING_SPEED = 0.10; 	                            // Velocidad de apuntado
SPOT_DISTANCE = 0.40; 	                            // Distancia de avistamiento
SPOT_TIME = 0.40; 		                            // Tiempo de avistamiento
COURAGE = 0.30; 		                            // Coraje
RELOAD_SPEED = 0.20; 	                            // Velocidad de recarga
COMMANDING = 0.60; 		                            // Liderazgo
////////////////////////////////////////////////////////////////////////////////

/* Bengalas */
MIV_FLARE_INTENSITY = 30;                           // Intensidad de la luz de las bengalas de granadero.
MIV_FLARE_RANGE = 200;                              // Rango de la luz de las bengalas de granadero.
MIV_MORTAR_FLARE_INTENSITY = 50;                    // Intensidad de la luz de las bengalas de mortero.
MIV_MORTAR_FLARE_RANGE = 350;                       // Rango de la luz de las bengalas de mortero.
MIV_MORTAR_FLIGHT_TIME = 8;                         // Tiempo de vuelo hasta encenderse
MIV_MORTAR_FALL_SPEED = 4;                          // Velocidad de caida en m/s
////////////////////////////////////////////////////////////////////////////////

/* Modificar desde los define que estan arriba de todo.
NO TOCAR LO QUE ESTA ABAJO DE ESTA LINEA             */
onLoadName = NAME;	                                // Nombre de carga
briefingName = COMPLETE_NAME;                       // Nombre en briefing
onLoadMission = DESCRIPTION;                        // Pie de carga
overviewText = DESCRIPTION;                         // Pie en seleccion de mision
overviewPicture = IMAGE;                            // Imagen en seleccion de mision
loadScreen = IMAGE;                                 // Imagen en carga
////////////////////////////////////////////////////////////////////////////////

/*******************************************************************************
                         Realizado por |ArgA|MIV
*******************************************************************************/
