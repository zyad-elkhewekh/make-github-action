#!/bin/bash

answer=$(cat ./solution)

if [[ "$answer" == "special_devops!"  ]]; then
	echo "CONGRATS"
else
	echo "WRONG"
fi
