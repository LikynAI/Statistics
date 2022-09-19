#!/bin/bash

source venv/bin/activate

iptables -A INPUT -p tcp --dport 1234 -j ACCEPT
jupyter notebook --ip 0.0.0.0 --no-browser --port=1234 --allow-root
grep http jupyter notebook --ip 0.0.0.0 --no-browser --port=1234 --allow-root

xdg-open 0.0.0.0:1234
