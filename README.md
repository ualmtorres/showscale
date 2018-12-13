# Showscale

Proyecto sencillo para comprobar el balanceo en un despliegue de varios pods en OpenShift. 

Modifica el script `testscale.sh` sustituyendo en la petición `curl` la URL por la URL correspondiente en la que esté ejecutándose la aplicación.


```bash
#!/bin/bash

for i in $(seq 1 $1); do
curl http://showscale-mtorres2.apps.192.168.66.107.xip.io/ ;
echo "\n";
done
```

Luego, comprueba el balanceo con `./testscale.sh 10` para lanzar 10 peticiones y ver cómo contestan los diferentes pods.