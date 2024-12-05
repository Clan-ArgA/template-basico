# Template Básico

Template básico de scripts para misiones ArgA

### Bengalas en morteros (NO USAR. Caen mucho los FPS)

Para que funcione el script de aumento de intensidad de las bengalas en los morteros se debe poner lo siguiente en el init del mortero:

```sqf

[this] execVM "core\scripts\flares\activate_mortar.sqf";
```

### Actualizar el template basico

1. Crear un PR con los cambios a realizar
2. Cambiar la version del template en `./core/private_settings.hpp`. Modificar las constantes `TEMPLATE_VERSION` y `TEMPLATE_LAST_UPDATE`
3. Actualizar nombre del template basico:  `./arga_settings.hpp`. Modificar variable `COMPLETE_NAME`
4. Si el PR es aprobado, mergear a master
5. Una vez mergeado, borrar la branch
6. En tu repositorio local, volver a master y hacer un `git pull`
7. Actualizar la version del template en la base de datos: `UPDATE arga-log.version_template SET version_number = [TEMPLATE_VERSION] and version_date = [TEMPLATE_LAST_UPDATE];`
8. Si corresponde, actualizar los scripts base de `persistentes-arga`: https://github.com/Clan-ArgA/persistentes-arga. Recordar actualizar `TEMPLATE_VERSION`, `TEMPLATE_LAST_UPDATE` y `COMPLETE_NAME`.
9. Si corresponde, actualizar los scripts base de `entrenamientos-arga`: https://github.com/Clan-ArgA/entrenamientos-arga. Recordar actualizar `TEMPLATE_VERSION`, `TEMPLATE_LAST_UPDATE` y `COMPLETE_NAME`.

### Como actualizar el template-basico en el panel manualmente

El panel cuando recibe una solicitud de descarga del template-basico (por ejemplo desde el formulario de misiones), realiza un `git pull` de forma automatica del template, por lo que siempre deberia descargar la ultima version disponible.

Si esto no sucede podemos actualizarlo manualmente:

1. `cd /opt/template-basico`
2. `git pull`
