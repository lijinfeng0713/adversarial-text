#!/bin/bash

seqlen=100
wordlen=20
maxchars=20
beam_width=3
dataset=reuters5
n_classes=5

python charlstm_hotflip.py \
       --batch_size 20 \
       --data ~/data/reuters/${dataset}/${dataset}-char-seqlen-${seqlen}-wordlen-${wordlen}.npz \
       --drop_rate 0.2 \
       --embedding_dim 128 \
       --feature_maps 25 50 75 100 125 150 \
       --highways 1 \
       --kernel_size 1 2 3 4 5 6 \
       --lstm_units 256 \
       --lstms 2 \
       --n_classes ${n_classes} \
       --name ${dataset}-char-seqlen-${seqlen}-wordlen-${wordlen} \
       --seqlen ${seqlen} \
       --unipolar \
       --vocab_size 128 \
       --wordlen ${wordlen} \
       --maxchars ${maxchars} \
       --beam_width ${beam_width} \
       --outfile ${dataset}-char-hotflip-c${maxchars}-b${beam_width} \
       --samples 500 \