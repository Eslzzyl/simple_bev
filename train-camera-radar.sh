#! /bin/bash

python train_nuscenes.py \
       --exp_name="rad_mine" \
       --max_iters=25000 \
       --log_freq=1000 \
       --dset='trainval' \
       --batch_size=4 \
       --grad_acc=5 \
       --use_scheduler=True \
       --data_dir='/root/public/nuScenes/Fulldatasetv1.0/' \
       --log_dir='logs_nuscenes' \
       --ckpt_dir='checkpoints' \
       --res_scale=2 \
       --ncams=6 \
       --nsweeps=5 \
       --encoder_type='res101' \
       --use_radar=True \
       --use_metaradar=True \
       --use_radar_filters=False \
       --device_ids=[0]