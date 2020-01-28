#!/usr/bin/bash

# Script to test automatically the pipeline
# requires data in fsupek_data (only to run in agendas server)

set -e

# test with trimgalore
nextflow run main.nf -profile test

echo "Pipeline execution test"
