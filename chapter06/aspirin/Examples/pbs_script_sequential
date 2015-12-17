#!/bin/bash
## pbs launching script          April 2010
## -to run multiple sequential namd jobs after an initial minimization step 	
## 

#PBS -l nodes=8
# PBS -A pMelbxxxxxx
#PBS -l walltime=24:0:0

### - job basename ------------------------------------------
jobname="_example_sequential_production_"
### --------------------------------------------------------------

date=$(date +%F);
date2=$(date +%F-%H.%M);

cd $PBS_O_WORKDIR
set CONV_RSH = ssh
qstat -f $PBS_JOBID >JobLog/$date2$jobname.qstat.txt;

module load namd/2.7b2-openmpi-gcc

### --------------------------------------------------------------------------
## optimize the original molecule
mpiexec namd2 example_optimization.conf >OutputText/optimization.$date.out 2>Errors/optimization.$date.err;

mv *.dcd OutputFiles/
cp *.coor *.vel *.xsc *.xst RestartFiles/
## mv generic_optimmization output to generic_restart files: 
mv generic_optimization.restart.coor generic_restartfile.restart.coor
mv generic_optimization.restart.vel  generic_restartfile.restart.vel
mv generic_optimization.restart.xsc  generic_restartfile.restart.xsc

                                    
### start a loop ------------------------------------------------------------
for loop in {1..10} 
do 
basename="$date$jobname$loop" 
## run namd job:
mpiexec namd2 example_sequential_production.conf >OutputText/$basename.out 2>Errors/$basename.err;

## rename output and move data into folders 
cp generic_restartfile.dcd   OutputFiles/$basename.dcd;
cp generic_restartfile.coor  RestartFiles/$basename.restart.coor;
cp generic_restartfile.vel   RestartFiles/$basename.restart.vel;
cp generic_restartfile.xsc   RestartFiles/$basename.restart.xsc;
cp generic_restartfile.xst   RestartFiles/$basename.xst;

done
### --------------------------------------------------------------------------

## cleanup
mv FFTW* OutputText/;
rm *.BAK *.old *.coor *.vel *.xsc *.xst; 
mv pbs_*.e* JobLog/;
mv pbs_*.o* JobLog/;


