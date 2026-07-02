#!/bin/bash
# Script to run OpenFOAM case in Docker

DOCKER_IMAGE="microfluidica/openfoam:v2506"
CASE_DIR=$(pwd)

echo "Running blockMesh..."
docker run --rm -v "$CASE_DIR":/data -w /data "$DOCKER_IMAGE" blockMesh

echo "Running simpleFoam..."
docker run --rm -v "$CASE_DIR":/data -w /data "$DOCKER_IMAGE" simpleFoam
