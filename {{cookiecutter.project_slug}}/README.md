# {{cookiecutter.project_slug}}

## Overview

The pipeline aims to {{cookiecutter.aim}}.

The pipeline is built in [nextflow](https://www.nextflow.io/),
a pipeline framework for reproducible research. The software handles
parallelization in multiple HPC scheduler or multicore machine. It also
can handle virtual environtments (via conda) and containarization
(via docker or singularity).

## Usage

1. step 1
2. step 2
3. Run the pipeline

```bash
nextflow run {{cookiecutter.github_user}}/{{cookiecutter.project_slug}} \
    -profile slurm,conda \
    -w /path/to/scratch \
    -resume \
    -N you@gmail.com \
    --paramA \
    --paramB acool
```

## Documentation

The documentation can be found in the [`docs/`](docs) directory.

- [Installation](docs/install.md)
- [Configuration](docs/configuration.md)
- [Usage](docs/usage.md)
- [Output](docs/output.md)
- [Troubleshooting](docs/troubleshooting.md)

Please, if you find any issue or question report it in the
[issue section](https://github.com/{{cookiecutter.github_user}}/{{cookiecutter.project_slug}}/issues).

## Credit

Author: {{cookiecutter.author_name}}

