#!/bin/bash
#SBATCH --nodes=10
#SBATCH --ntasks-per-node=40
#SBATCH -J EXP1
#SBATCH --time=0-23:30          # time (DD-HH:MM)
#SBATCH --account=XXXX
cd $SLURM_SUBMIT_DIR
module load NiaEnv/2018a
module load intel/2018.2
module load intelmpi/2018.2
module load boost/1.66.0
module load aspect/2.1.0
module load cmake


mpirun /scinet/niagara/software/2018a/opt/intel-2018.2-intelmpi-2018.2/aspect/2.1.0/bin/aspect  EXP1.prm               # mpirun or mpiexec also work


