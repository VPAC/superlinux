#!/bin/bash
## pbs launching script                                      December 2010
## -to run multiple sequential namd jobs after an initial minimization step 	
## 

#PBS -l nodes=8
#PBS -l walltime=24:0:0

## #PBS -A  <account>


### - job basename ---------------------------------------------------------
jobname="_A2_aspirin_short_example_01_"
### ------------------------------------------------------------------------

date=$(date +%F);
date2=$(date +%F-%H.%M);

cd $PBS_O_WORKDIR
set CONV_RSH = ssh
qstat -f $PBS_JOBID >JobLog/$date2$jobname.qstat.txt;

module load namd

### --------------------------------------------------------------------------
## optimize the original molecule
mpiexec namd2  aspirin_opt_short.conf >OutputText/opt.$jobname.$date2.out 2>Errors/opt.$jobname.$date2.err;

mv *.dcd OutputFiles/
cp *.coor *.vel *.xsc *.xst RestartFiles/
## mv generic_optimmization output to generic_restart files: 
mv generic_optimization.restart.coor generic_restartfile.restart.coor
mv generic_optimization.restart.vel  generic_restartfile.restart.vel
mv generic_optimization.restart.xsc  generic_restartfile.restart.xsc

                                    
### start a loop ------------------------------------------------------------
### aiming for 1 ns a round 

for loop in {1..5} 
do 
basename="$date2$jobname$loop" 
## run namd job:
mpiexec namd2 aspirin_rs_short.conf >OutputText/$basename.out 2>Errors/$basename.err;

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


