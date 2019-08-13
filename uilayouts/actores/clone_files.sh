#!/bin/bash
echo clonando archivos
cd /home/scrapbook/tutorial/akkanet && curl -X GET 'http://wispuntadev.ddns.net/api/v4/projects/85/repository/files/AkkaCrashCourse\/FActores\/FActoresHooks.cs/raw?ref=develop'   -H 'Private-Token: 7Kyu6hQamvh2WyB5Giee'   -H 'cache-control: no-cache' -o Program.cs
