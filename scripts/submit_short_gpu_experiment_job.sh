#!/bin/bash
#$ -pe smp 12
#$ -l h_vmem=6G
#$ -l gpu=1
#$ -l h_rt=1:0:0
#$ -cwd
#$ -j y
#$ -o job_results

module load python/3.10.14

APPTAINERENV_NSLOTS=${NSLOTS}
apptainer run --nv --env-file myenvs --env "JOB_TYPE=$JOB_TYPE,RUN_NAME=$RUN_NAME,NUM_SEEDS=$NUM_SEEDS,ENV_NAME=$ENV_NAME,WANDB_API_KEY=$WANDB_API_KEY" containers/iris.sif
