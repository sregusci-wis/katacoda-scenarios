Las dependencias minimas son
* Akka (Modulo base)

Algunas extras son:

* Akka.Remote
* Akka.Cluster
* Akka.Persitence
* Akka.TestKit
* Akka.Streams

## TAREAS

Movernos al directorio del user
`dotnet add package Akka --version 1.4.0-beta1`{{execute}}

Abrir el archivo **Program.cs**`akkanet/Program.cs`{{open}}


<pre class="file" data-filename="akkanet/Program.cs" data-target="replace">
using System;
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
                Console.WriteLine("Hola desde Main");
                IActorRef primerActor = system.ActorOf(Props.Create&lt;PrimerActor&gt;(), "primer-actor");
                primerActor.Tell(new PrimerActor.HolaMundo());

                Console.ReadLine();
            }
        }

        public class PrimerActor : ReceiveActor
        {
            public class HolaMundo { };

            public PrimerActor()
            {
                Receive&lt;HolaMundo&gt;( x => HolaMundoHandler());
            }

            private void HolaMundoHandler()
            {
                Console.WriteLine("Hola desde el Actor");
            }
        }


    }
}

</pre>

Probamos el programa
`dotnet run`{{execute}}