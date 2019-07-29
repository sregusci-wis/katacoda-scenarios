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


<pre class="file" data-filename="app.js" data-target="replace">var http = require('http');
var requestListener = function (req, res) {
  res.writeHead(200);
  res.end('Hello, World!');
}

var server = http.createServer(requestListener);
server.listen(3000, function() { console.log("Listening on port 3000")});
</pre>
          

<pre class="file" data-target="clipboard">Test</pre>