#!/bin/bash
set -e

# start setkey
service setkey start

# start racoon
service racoon start
