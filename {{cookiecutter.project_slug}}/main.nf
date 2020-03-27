#!/usr/bin/env nextflow
/*

############  {{cookiecutter.project_slug}} ######################

{{cookiecutter.project_slug}} Pipeline.

by: {{cookiecutter.author_name}}
aim: The pipeline aims to {{cookiecutter.aim}}
Documentation: https://github.com/{{cookiecutter.github_user}}/{{cookiecutter.project_slug}}
*/

def helpMessage() {
    log.info"""
    Usage:
    The typical command for running the pipeline is as follows:
    nextflow run {{cookiecutter.github_user}}/{{cookiecutter.project_slug}} [OPT]
    Mandatory arguments:
      --argsA [file]         Path to input data.
      -profile [str]         Configuration profile.
    Options:
      --argsB [str]          Argument B
      --verbose [bool]       Verbosity should be enforced?
    Help:
      --help  [bool]         Show help
    """.stripIndent()
}

// Show help message
if (params.help) {
    helpMessage()
    exit 0
}

/*
 * PARAMS
 */

params.argsA = "path/to/input_data"
params.argsB = "test"
params.verbose = false

/*
 * CHANNELS
 */

Channel
    .fromPath(params.argsA)
    .splitCsv(header:true)
    .map{ row-> tuple(row.sampleId, file(row.read1), file(row.read2)) }
    .set { samples_ch }

/*
 * STEP 1 - XXXX
 */

process procesA {
  tag "${name}"

  label 'cpus_5'

  publishDir "${params.outdir}/TMP"

  input:
  set val(name), file(input) from input_dir
  output:
  
  script:
  """
  ## do something!
  """
}

