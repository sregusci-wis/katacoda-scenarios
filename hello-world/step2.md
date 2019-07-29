Las dependencias minimas son
* Akka (Modulo base)

Algunos  son:

* Akka.Remote
* Akka.Cluster
* Akka.Persitence
* Akka.TestKit
* Akka.Streams

## TAREAS

Movernos al directorio del user
`dotnet add package Akka --version 1.4.0-beta1`{{execute}}

Abrir el archivo **Program.cs** en la carpeta akkanet


<pre class="file" data-filename="./akkanet/Program.cs" data-target="replace">using System;
using Akka.Actor;

namespace akkanet
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var system = ActorSystem.Create("actorSystem"))
            {
                Console.WriteLine("Hello World!");
                //var firstRef = Sys.ActorOf(Props.Create<PrintMyActorRefActor>(), "first-actor");
            }
        }


    }
}
</pre>