#!/bin/bash

flask run -h 0.0.0.0 -p 8080 &

python3 ping_server.py &

python3 worker.py

wait
