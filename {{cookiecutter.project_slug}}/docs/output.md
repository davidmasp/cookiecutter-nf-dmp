# {{cookiecutter.project_slug}}: Output

## Output directory

The output directory is the folder where all the output files will be stored.
It can be customized in the pipeline call as `--outdir outdir`.
Inside the output dir there will be also a tracedir which will store
execution information for the pipeline run and a DAG.

## Output files

The output directory of {{cookiecutter.project_slug}} will be structured in
different folders containing different output types.

| Folder | File Type | Description |
|---------|-----------|-----------------------|
| outputA | .tsv | Table for output A |
| outputB | .csv | Csv file for output B |
|  |  |  |

## TMP folder

Some pipelines in development state will include a `TMP` folder which contains
intermediate files for debugging.
