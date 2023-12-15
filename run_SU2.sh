#!/bin/bash -x

ncpu=16

DIR_OUTPUT=("output_restart" "output_flow" "output_surface_flow")
# Make directory
for (( i = 0; i < ${#DIR_OUTPUT[*]}; i++ ))
{
   if [[ ! -e $DIR_OUTPUT[i] ]]; then
     mkdir ${DIR_OUTPUT[i]}
   fi
}

mpirun -np $ncpu SU2_CFD sphere.cfg > log_su2
