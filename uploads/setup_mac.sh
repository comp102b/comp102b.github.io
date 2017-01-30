## Setup script to set your local environment for Comp102b submission
# Author : Koustuv Sinha
#

# install homebrew
echo "Checking if homebrew exist. If not then installing it. It may prompt for your password."
brew -v foo >/dev/null 2>&1 || { /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }

# install wget
brew update
brew install git
brew install wget --with-libressl
brew install git

# save pwd
cwd=$(pwd)
# Install python 2.7 using conda
wget https://repo.continuum.io/miniconda/Miniconda2-latest-MacOSX-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
export PATH="$HOME/miniconda/bin:$PATH"
rm ~/miniconda.sh

# download wheel from github
cd ~
curl -O -J http://132.206.3.23:8056/uploads/comp102b-0.0.1-py2.py3-none-any.whl
pip install comp102b-0.0.1-py2.py3-none-any.whl
rm comp102b-0.0.1-py2.py3-none-any.whl

# set git up
git config --global credential.helper store

echo "Installation complete. You must now type this in your terminal to make it work : "
echo "source ~/.bashrc"
