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
using Akka.Event;

namespace akkanet
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var system = ActorSystem.Create("actorSystem"))
            {
                Console.WriteLine("Hello World!");
                IActorRef primerActor = system.ActorOf(Props.Create<PrimerActor>(), "primer-actor");
                primerActor.Tell(new PrimerActor.HolaMundo());

                Console.ReadLine();
            }
        }

        public class PrimerActor : ReceiveActor
        {
            public class HolaMundo { };

            public PrimerActor()
            {
                Receive<HolaMundo>( x => HolaMundoHandler());
            }

            private void HolaMundoHandler()
            {
                Console.WriteLine("Hola Mundo");
            }
        }


    }
}

</pre>