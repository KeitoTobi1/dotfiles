#!/usr/bin/env bash

# Install bash-it
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

# Install ble.sh
git clone --recursive --depth 1 --shallow-submodules https://github.com/akinomyoga/ble.sh.git
make -C ble.sh install PREFIX=~/.local
echo 'source ~/.local/share/blesh/ble.sh' >> ~/.bashrc

# .bashrc modifications
cp .bashrc ~/.bashrc
source ~/.bashrc
sed s/username/$USER/ ~/.bashrc > ~/.bashrc.tmp && mv ~/.bashrc.tmp ~/.bashrc

# Install Vlang

git clone --depth=1 https://github.com/vlang/v ~/v
cd ~/v
make
sudo ./v symlink

# Install bun

curl -fsSL https://bun.sh/install | bash

# Install volta

curl https://get.volta.sh | bash

# Install .NET SDK

curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel 8.0

# Install miniforge3

curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh

# Install juliaup

curl -fsSL https://install.julialang.org | sh