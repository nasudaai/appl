#!/bin/bash

read -p "port number?: " port
# port=$1
curl http://localhost:$port 
