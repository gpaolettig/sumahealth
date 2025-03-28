#!/bin/bash

usage() {
    echo "Usage: sumahealth [OPTIONS]"
    echo ""
    echo "OPTIONS:"
    echo "  -r, --resume	Show the number of active and inactive services."
    echo "  -a, --all	Show the status of services with symbols ● (active) or ○ (inactive)."
    echo " -in, --inactive	Show the inactive services."
    echo "  -h, --help	Show this help message."
}

if [ -z "$1" ]; then
    usage
    exit 1
fi

# Correctamente agrupar las condiciones
if [ "$1" == "-r" ] || [ "$1" == "--resume" ]; then
    act=$(mgradm status | grep "Active: active" | wc -l)
    in=$(mgradm status | grep "Active: inactive" | wc -l)

    echo "Active services: $act"
    echo "Inactive services: $in"
fi

if [ "$1" == "-a" ] || [ "$1" == "--all" ]; then
    grep -E "●|○" <<< "$(mgradm status)"
fi

if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    usage
    exit 0
fi
if [ "$1" == "-in" ] || [ "$1" == "--inactive" ]; then
    inactive=$(mgradm status | grep "Active: inactive")
    if [ -z "$inactive" ]; then
        echo "Everything is up and running."
    else
        echo "$inactive"
    fi
fi 
