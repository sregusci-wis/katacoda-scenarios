## Actores

![MODEL](./actores/assets/actormodel.jpg)

![SYSTEM](./actores/assets/sistemaactores.png)


* Porque
    * Queremos facilitar el desarrollo
    * Tenemos varias máquinas que necesitan compartir los cálculos
    * Es tolerante a fallos
* Para que
    * Porque queremos crear aplicaciones multi hilo de manera sencilla
    * Porque no queremos usar complicadas primitivas de concurrencia
    * Porque queremos escalar nuestras aplicaciones a más de una máquina, ya sea por carga o por redundancia.
* Como
    * Usando las clases implementan las interfaces de Akka.net
