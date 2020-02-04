# {{cookiecutter.project_slug}}: Usage

## Parameters

### Nextflow common params

Nextflow comes with a set of params to control some execution options, from
them, the more relevants are:

| Params |  description |
|----------|-------------------------|
| -w | Defines where the temporal files of the pipeline will be stored. |
| -c | Defines which configuration files should be used for the current execution |
| -profile | Defines which configuration profile should be used for the current execution |
| -resume | If to resume previously executed pipeline, intermediate files will be kept |
| -N | Email address to send execution report when the pipeline finishes or crashes, needs to be [configured in the system](https://www.nextflow.io/docs/latest/mail.html)|

### Pipeline specific params

The parameters which should be used in {{cookiecutter.project_slug}} are defined
below:

| Params | default | description |
|----------|---------|------------------------|
| --paramA | false | Description for paramA |
| --paramB | bcool | Description for paramB |
|  |  |  |

## Example

An example of a pipeline call would be:

```bash
nextflow run {{cookiecutter.github_user}}/{{cookiecutter.project_slug}} \
    -profile slurm,conda \
    -w /path/to/scratch \
    -resume \
    -N you@gmail.com \
    --paramA \
    --paramB acool
```
