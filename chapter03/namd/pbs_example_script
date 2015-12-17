#!/bin/bash

# pbs launching script example for NAMD job:
#			by Mike (March 2007)     

#     job name:
#PBS -N namd_example_job_01

#     how many cpus?
#PBS -l nodes=4

#     How long to run the job? (hours:minutes:seconds)
#PBS -l walltime=0:15:0

#     Name of output file:
#PBS -o Namd_1ubq_example_output.txt

#     Environmental varibles to make it work:
 
module load namd
cd $PBS_O_WORKDIR
 
#     Launching the job!

mpiexec namd2 Ubiquitin_example.conf 


