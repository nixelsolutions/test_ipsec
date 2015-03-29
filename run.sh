#!/bin/bash
set -e

# start setkey
service setkey start

# start racoon
racoon -dd > /tmp/racoon.log
 bash
