#!/bin/bash

seqlen=100
adv_eps=50
data=reuters2
n_samples=100

python wordcnn_deepfool.py \
       --adv_batch_size 16 \
       --adv_epochs 5 \
       --adv_eps ${adv_eps} \
       --batch_size 64 \
       --data ~/data/reuters/${data}/${data}-word-sample-${n_samples}-seqlen-${seqlen}.npz \
       --drop_rate 0.2 \
       --embedding ~/data/glove/glove.840B.300d.w2v.vectors.npy \
       --filters 128 \
       --indexer '~/data/glove/glove.840B.300d.annoy' \
       --kernel_size 3 \
       --n_classes 2 \
       --name ${data}-word-tanh-seqlen-${seqlen} \
       --outfile ${data}-word-deepfool-eps-${adv_eps} \
       --seqlen ${seqlen} \
       --bipolar \
       --units 128 \
       --w2v '~/data/glove/glove.840B.300d.w2v'
