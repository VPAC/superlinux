#!/bin/bash

# Name in queue and of .o and .e files
#PBS -N povray_smoketest 

# Reserve x nodes with 4 processors (ppn) each.
# PBS -l nodes=1:ppn=4

# Reserve x cpu's across the cluster (any order).
# PBS -l nodes=2

# Serial jobs only need 1 cpu, and don't need any MPI stuff below.
#PBS -l nodes=1

# Walltime
# twenty minutes
#PBS -l walltime=00:20:00

# Email notification to lev@vpac.org
# PBS -m abe

# Changes directory to your execution directory
cd $PBS_O_WORKDIR

module load povray 

povray povray_test.pov
