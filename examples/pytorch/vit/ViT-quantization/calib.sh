python -m torch.distributed.launch --nproc_per_node 1 \
    --master_port 12345 main.py \
    --calib \
    --name vit \
    --pretrained_dir $CKPT_DIR/R50-ViT-B_16.npz \
    --data-path $DATA_DIR \
    --model_type R50-ViT-B_16 \
    --img_size 384 \
    --num-calib-batch 10 \
    --calib-batchsz 8 \
    --quant-mode ft2 \
    --calibrator percentile \
    --percentile 99.99 \
    --calib-output-path calib-checkpoint
