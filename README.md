# Template Básico
Template básico de scripts para misiones ArgA

### Bengalas en morteros

Para que funcione el script de aumento de intensidad de las bengalas en los morteros se debe poner lo siguiente en el init del mortero:

```sqf

[this] execVM "core\scripts\flares\activate_mortar.sqf";
```


### Actualizar el template basico
1. Crear un PR con los cambios a realizar
2. Cambiar la version del template en `./core/private_settings.hpp`. Modificar las constantes `TEMPLATE_VERSION` y `TEMPLATE_LAST_UPDATE`
3. Si el PR es aprobado, mergear a master
4. Una vez mergeado, borrar la branch
5. En tu repositorio local, volver a master y hacer un `git pull`
6. Actualizar la version del template en la base de datos: `UPDATE arga-log.version_template SET version_number = [TEMPLATE_VERSION] and version_date = [TEMPLATE_LAST_UPDATE];`



### Como actualizar el template-basico en el panel manualmente
El panel cuando recibe una solicitud de descarga del template-basico (por ejemplo desde el formulario de misiones), realiza un `git pull` de forma automatica del template, por lo que siempre deberia descargar la ultima version disponible.

Si esto no sucede podemos actualizarlo manualmente:

1. `cd /opt/traefik/odoo-arga-docker/odoo-arga-addons/arga/data/template-basico`
2. `git pull`
