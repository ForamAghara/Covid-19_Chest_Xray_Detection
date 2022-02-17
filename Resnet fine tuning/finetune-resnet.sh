#!/bin/bash
#SBATCH --job-name=finetune-resnet
#SBATCH --output=finetune-resnet.log
#SBATCH --error=finetune-resnet.log
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=12G
#SBATCH --partition=skylake-gpu
# require one GPU
#SBATCH --gres=gpu:1
#SBATCH --time=03:30:00

module load openmpi/4.0.0
module load cudnn/7.6.5-cuda-10.2.89
source activate /home/mrajopad/.conda/envs/test

cd "/home/mrajopad/"

srun "/home/mrajopad/.conda/envs/test/bin/python3" "finetune-resnet.py"
