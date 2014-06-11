#!/bin/bash

set -e

cd /usr/src/app/app
node ../server.js 8000 0.0.0.0
