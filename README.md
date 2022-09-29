# Template Básico
### Template básico de scripts para misiones ArgA por MIV


Ruta de acceso para actualizar el template en el servidor:

`/opt/traefik/odoo-arga-docker/odoo-arga-addons/arga/data/template-basico`

### Bengalas en morteros

Para que funcione el script de aumento de intensidad de las bengalas en los morteros se debe poner lo siguiente en el init del mortero:
```
[this] execVM "core\scripts\flares\activate_mortar.sqf";
```
