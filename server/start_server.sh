#!/bin/sh

# Use FLASK_DEBUG=True if needed

port="${1-5000}"

FLASK_APP=$(dirname $(readlink -f $0))/standalone.py python3 -m flask run --host 0.0.0.0 -p "$port" --with-threads
