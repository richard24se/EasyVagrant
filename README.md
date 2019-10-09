# EasyVagrant
Ejecutar estos comandos antes:

---------->VAGRANT!<------------------ SÓLO DESARROLLO LOCAL
ALERTA!: SACAR LA CARPETA DEL VAGRANT EN OTRA UBICACIÓN Y DESDE AHÍ MANEJARLA
#plugin para compartir archivos      <------------- INSTALACIÓN CRÍTICA 
```
vagrant plugin install vagrant-vbguest
```
#maneja variables de entorno : .env  <------------- INSTALACIÓN CRÍTICA 
```
vagrant plugin install vagrant-env
```
#CREAR UN ARCHIVO .env dentro de la carpeta VAGRANT
#agregar esta línea ----> CUSTOM_IP=192.168.1.224 <--- TIENE QUE SER LA IP DE TU RED O LA QUE DESEES, ESTA TENDRÁ EL VAGRANT
#levantar el vagrant
vagrant up
#reiniciar el vagrant #SIEMPRE HACER ESTO LUEGO DEL PRIMER UP
vagrant reload
#apagar el vagrant
vagrant halt
#provisionar el vagrant ---> INSTALAR SCRIPT
vagrant provision
#conectar ssh
vagrant ssh
#listar los vagrant #PARA UBICAR EL ID ÚNICO Y UTILIZAR EL SSH CON ESTO
vagrant global-status
#conectar ssh CON ID ÚNICO
vagrant ssh $UNIQUE_ID
