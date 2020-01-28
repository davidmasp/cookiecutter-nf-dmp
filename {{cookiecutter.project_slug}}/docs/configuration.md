# {{cookiecutter.project_slug}}: Configuration

## Configuration directory

The main parameters to configure the pipeline are found in [conf](../conf).

The file is structured in a main [`nextflow.config`](../nextflow.config)
file which handles general parameters. The configuration profiles are
availble in the [configuration directory](../conf).

The {{cookiecutter.project_slug}} comes with 4 profiles which can be combined
through a comma-separated list such as:

```bash
nextflow run {{cookiecutter.github_user}}/{{cookiecutter.project_slug}} -profile slurm,conda
```

The profiles can not be combined within types, only execution with
environtments.

### Slurm

The slurm profile uses slurm to **execute** the pipeline jobs.
More information about the use of slurm with nextflow can be found
[here](https://www.nextflow.io/docs/latest/executor.html#slurm).

This is meant for HPC systems such local or remote clusters. By default no
environtment is set up so this profile has to be complemented with another to
define the environtment. If missing, tasks will use the default local
executor.

### Local environtment

The local profile executes in a local **environtment**.
Its parameters can be found mainly here ([`base`](../conf/base.config))

This is meant for debugging purposes or personal computers.
Because it doesn't have an associated environtment it will need all the
software required to be installed locally.

### Conda

The conda profile uses conda environment for the jobs in the pipeline.
Nextflow will build and activate the main environtment from the
[`environment.yml`](../environment.yml) file. It will only be built the first
time and it will be stored in the `{{cookiecutter.condaCacheDir}}` directory.

### Singularity

The singularity profile is based in the same conda environment defined in
[`environment.yml`](../environment.yml) but in this case a local
singularity image is needed.

Although nextflow can in theory build singularity images too, this pipeline
needs a pre-built singularity image as this permits the use of the pipeline
in off-line systems.

In order to build the image run:

```bash
# you will need sudo access for this step
sh build_singularity.sh
```

If you don't have sudo access in the machine you can build the images in a
external machine (your personal computer) and copy the image in the folder
with the same name (i.e. `singularity_img/environtment.simg`).

## Include new configuration files

If you want to include a configuration file that complements the current
existing profiles you can create the configuration file in the [conf](../conf)
folder and added it in your command with a separated comma.

You can also include a whole new profile which you can then add in the call.
