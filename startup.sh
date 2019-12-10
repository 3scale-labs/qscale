#!/bin/bash

if [ -d $HOME/anaconda]
then
  wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
  bash Anaconda3-2019.10-Linux-x86_64.sh -b -p $HOME/anaconda
  $HOME/anaconda/bin/pip install qiskit
  echo 'Enter a password for Jupyter Notebook'
  $HOME/anaconda/bin/jupyter notebook password
fi
$HOME/anaconda/bin/jupyter notebook
