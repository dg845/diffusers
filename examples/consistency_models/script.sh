#!/bin/bash

accelerate launch train_consistency_distillation.py --dataset_name="cifar10" --resolution=32 --center_crop --random_flip  --output_dir="cifar10-32" --train_batch_size=16 --num_epochs=100 --gradient_accumulation_steps=1 --learning_rate=1e-4 --lr_warmup_steps=500 --mixed_precision=no --push_to_hub