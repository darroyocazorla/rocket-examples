#!/usr/bin/env bash

# · Install conda 26.5.3 (embedded Python 3.14), the same as rocket-builder
CONDA_DIR=/opt/conda
CONDA_VERSION=py314_26.5.3-2-Linux-x86_64

curl -LO https://repo.anaconda.com/miniconda/Miniconda3-$CONDA_VERSION.sh
mkdir -p $CONDA_DIR
bash Miniconda3-$CONDA_VERSION.sh -f -b -p $CONDA_DIR
rm Miniconda3-$CONDA_VERSION.sh

# · Configuring conda: conda-forge instead of defaults, which requires accepting the Anaconda Terms of Service
$CONDA_DIR/condabin/conda config --system --set auto_update_conda false
$CONDA_DIR/condabin/conda config --system --remove channels defaults
$CONDA_DIR/condabin/conda config --system --add channels conda-forge
