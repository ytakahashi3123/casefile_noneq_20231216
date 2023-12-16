#!/bin/bash -x

ncpu=16
mpirun -np $ncpu SU2_CFD sphere.cfg > log_su2
