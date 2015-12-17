#!/bin/bash

#PBS -N octave-array

#PBS -l nodes=1

#PBS -l walltime=00:15:00

# PBS -M YourEmailAddressGoesHere

# This is the array

#PBS -t 1-10

# PBS -m abe

cd $PBS_O_WORKDIR

module load octave

octave file-${PBS_ARRAYID}.oct
