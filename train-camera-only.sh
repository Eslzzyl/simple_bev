#! /bin/bash

python train_nuscenes.py \
       --exp_name="rgb_mine" \
       --max_iters=25000 \
       --log_freq=1000 \
       --dset='trainval' \
       --batch_size=2 \
       --nworkers=0 \
       --grad_acc=5 \
       --use_scheduler=True \
       --data_dir='/root/public/nuScenes/Fulldatasetv1.0/' \
       --log_dir='logs_nuscenes' \
       --ckpt_dir='checkpoints' \
       --res_scale=2 \
       --ncams=6 \
       --encoder_type='res101' \
       --do_rgbcompress=True \
       --device_ids=[0]