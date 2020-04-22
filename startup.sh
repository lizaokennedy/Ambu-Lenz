#!/bin/bash
gnome-terminal -- bash -c "cd front-end; npm run serve" &
gnome-terminal -- bash -c "cd back-end/src; flask run" &
gnome-terminal -- bash -c "docker start pg-docker" &
gnome-terminal -- bash -c "docker container start tigergraph_dev; ssh tigergraph@172.22.0.2; "

echo "Done"