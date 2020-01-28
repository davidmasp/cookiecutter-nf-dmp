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

## docs

### Structure

An empty file structure can look like this:

```bash
# TODO
```

Note though that this is a minimal set up, and this template is thought to
scale with more directories easily.

### How to update the template

These intructions are based in the following
[workflow](https://github.com/cookiecutter/cookiecutter/issues/784#issuecomment-283529086).
This will likely get more automatized in the future.

This assumes, the generated project dir is a git repo and already has some
commits.

```bash
# create a template branch
git checkout -b template
# re-compile the template
cookiecutter gh:davidmasp/cookiecutter-nf-dmp --output-dir .. --config-file .cookiecutter.yaml --no-input --overwrite-if-exists
# the original file
git checkout develop
# here you will need to manually solve conflicts
git merge template
```

or if you are using git flow.

```bash
git flow feature start updateTemplate
cookiecutter gh:davidmasp/cookiecutter-nf-dmp --output-dir .. --config-file .cookiecutter.yaml --no-input --overwrite-if-exists
git flow feature finish
```

It is important to highlight that we need a previous commit before the update.

## Quick links

* [cookiecutter](https://cookiecutter.readthedocs.io/en/latest/)
* [nextflow](https://www.nextflow.io/)
* [nf-core](https://nf-co.re/)
* [nextflow docs](https://www.nextflow.io/docs/latest/index.html)
