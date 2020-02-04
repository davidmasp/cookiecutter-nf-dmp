#!/usr/bin/bash

# Script to test automatically the pipeline

set -e

nextflow run main.nf -profile test

echo "Pipeline execution test"
