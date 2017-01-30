#!/bin/bash
# Installation script for Comp102B Computers & Computing
# McGill University, Canada, Fall 2017
# Prof Derek Ruths, TA : Koustuv Sinha & Haji Mohammed Saleem

# save pwd
cwd=$(pwd)
# Install python 2.7 using conda
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
export PATH="$HOME/miniconda/bin:$PATH"
rm ~/miniconda.sh

# download wheel from github
curl -O -J http://132.206.3.23:8056/uploads/comp102b-0.0.1-py2.py3-none-any.whl
pip install comp102b-0.0.1-py2.py3-none-any.whl
rm comp102b-0.0.1-py2.py3-none-any.whl

# set git up
git config --global credential.helper store
# source
source ~/.bashrc
