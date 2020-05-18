# EasyVagrant

Requisitos: 
- Instalar VirtualBox versión 6 a más

---------->VAGRANT!<------------------ SÓLO DESARROLLO LOCAL

ALERTA!: Crear carpeta con nombre vagrant en el C, luego ejecutar estos comandos:

#plugin para compartir archivos
```
vagrant plugin install vagrant-vbguest
```
#maneja variables de entorno : .env 
```
vagrant plugin install vagrant-env
```
#CREAR UN ARCHIVO .env dentro de la carpeta VAGRANT
```
#agregar esta línea ----> CUSTOM_IP=192.168.1.224 <--- TIENE QUE SER LA IP DE TU RED O LA QUE DESEES, ESTA TENDRÁ EL VAGRANT
#agregar esta línea ----> FOLDER_APPS=C:\Carpeta_jperez <--- NOMBRE DE LA CARPETA DONDE ESTARÁN TUS PROYECTOS, USA LA QUE DESEES
```

#levantar el vagrant
```
vagrant up
```
#reiniciar el vagrant #SIEMPRE HACER ESTO LUEGO DEL PRIMER UP
```
vagrant reload
```
#apagar el vagrant
```
vagrant halt
```
#provisionar el vagrant ---> INSTALAR SCRIPT
```
vagrant provision
```
#conectar ssh
```
vagrant ssh
```
#listar los vagrant #PARA UBICAR EL ID ÚNICO Y UTILIZAR EL SSH CON ESTO
```
vagrant global-status
```
#conectar ssh CON ID ÚNICO
```
vagrant ssh $UNIQUE_ID
```
#Archivo init en powershell para dogrant y vacker
```
#if (!(Test-Path $Profile)) {
    New-Item -Type file -Path $Profile -Force }
