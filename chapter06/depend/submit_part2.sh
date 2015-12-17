#!/bin/bash

FIRST=$(qsub myjob4.pbs)
echo $FIRST
SECOND=$(qsub -W depend=afterany:$FIRST myjob5.pbs)
echo $SECOND
THIRD=$(qsub -W depend=afterany:$SECOND myjob6.pbs)
echo $THIRD
