# README

My own cookiecutter for [nextflow pipelines](https://www.nextflow.io/).

This is supposed to be my own standard, another option which has a big
community is available at
[nf-core](https://nf-co.re/tools#creating-a-new-workflow).
I'll try to make it as similar as possible so the migration towards
nf-core can be easily performed, however, this template aims to be
as simple as possible mantaining a decent amount of documentation and
automation.

You can see this as a self-use template for pipeline projects.
If it is useful to you, please feel free to use it and contribute.

## Usage

You need a installation of
[cookiecutter](https://cookiecutter.readthedocs.io/en/latest/)
and then just run:

```bash
cookiecutter gh:davidmasp/cookiecutter-nf-dmp
```

or if using git flow:

```bash
cookiecutter gh:davidmasp/cookiecutter-nf-dmp
git flow init -d
git add .
git commit -m 'initial commit'
```

## docs

### Structure

An empty file structure can look like this:

```bash
>>> tree .
.
|-- build_singularity.sh
|-- CHANGELOG.md
|-- conf
|   `-- slurm.config
|-- docs
|   |-- configuration.md
|   |-- install.md
|   |-- output.md
|   |-- README.md
|   |-- troubleshooting.md
|   `-- usage.md
|-- nextflow.config
`-- test_pipeline.sh

2 directories, 11 files
```

Note though that this is a minimal set up, and this template is thought to
scale with more directories easily.

### How to update the template

These intructions are based in the following
[workflow](https://github.com/cookiecutter/cookiecutter/issues/784#issuecomment-283529086).
This will likely get more automatized in the future.

This assumes, the generated project dir is a git repo and already has some
commits.

First you need to create a template branch. If you don't want to delete custom
updates in the template you should checkout from the last commit that updated
the cookiecutter template. Basically use the first commit.

The following is an example workflow.

```bash
git checkout -b template <sha1-of-first-commit>

# re-compile the template
cookiecutter gh:davidmasp/cookiecutter-nf-dmp --output-dir .. --config-file .cookiecutter.yaml --no-input --overwrite-if-exists

# add and commit changes
git add .
git commit -m 'update template'

# goback to the original branch
git checkout develop

# here you will need to manually solve conflicts
git merge --no-ff template
# if you don't delete the template branch you can use it later for further
# updates
```

It is important to highlight that we need a previous commit before the update.

## Quick links

* [cookiecutter](https://cookiecutter.readthedocs.io/en/latest/)
* [nextflow](https://www.nextflow.io/)
* [nf-core](https://nf-co.re/)
* [nextflow docs](https://www.nextflow.io/docs/latest/index.html)
