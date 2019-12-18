#!/bin/bash
singularity exec --nv trax.sif /venv/bin/python -m trax.trainer --dataset=mnist --model=MLP --config="train.train_steps=10"

