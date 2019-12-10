#!/bin/bash

if [ ! -d $HOME/anaconda ]; then
  wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
  bash Anaconda3-2019.10-Linux-x86_64.sh -b -p $HOME/anaconda
  $HOME/anaconda/bin/pip install qiskit
  $HOME/anaconda/bin/jupyter notebook --generate-config
  echo '-------------------------------------'
  echo 'Enter a password for Jupyter Notebook'
  echo '-------------------------------------'
  $HOME/anaconda/bin/jupyter notebook password
  echo "c.NotebookApp.allow_origin = '*'" >> ~/.jupyter/jupyter_notebook_config.py
fi
$HOME/anaconda/bin/jupyter notebook
