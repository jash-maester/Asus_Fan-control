#!/bin/sh

sudo asus-fan-control set-temps 45 50 55 60 65 70 75 80
echo Fan-speed Set to minimum configuration
echo Current fant speeds
sudo asus-fan-control get-temps
