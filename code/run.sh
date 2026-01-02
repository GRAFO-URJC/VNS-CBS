#!/bin/bash
# Script para ejecutar CBS.jar con parámetros personalizados
#
# Uso: ./run.sh [instanceFolder] [outputFolder] [iterations] [reportF] [cutoff]
#
# Parámetros por defecto:
#   instanceFolder: instances/test
#   outputFolder: output/
#   iterations: 10000
#   reportF: 100
#   cutoff: 15

java -jar CBS.jar "$@"

