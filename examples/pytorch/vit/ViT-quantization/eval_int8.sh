python -m torch.distributed.launch --nproc_per_node 1 \
    --master_port 12345 eval_engine.py \
    --name vit \
    --engine ../../../tensorrt/vit/ViTINT8Engine_16_12_12_3072_768_32_384_577_2 \
    --pretrained_dir output/vit_checkpoint.bin \
    --data-path $DATA_DIR \
    --batch-size 32
