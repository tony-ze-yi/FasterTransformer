python -m torch.distributed.launch --nproc_per_node 1 \
    --master_port 12345 eval_engine.py \
    --name vit \
    --model_type=R50-ViT-B_16 \
    --img_size=384 \
    --engine ../../../tensorrt/vit/ViTINT8Engine_16_12_12_3072_768_32_384_577_2 \
    --pretrained_dir output/vit_checkpoint.bin \
    --plugin_path=../../../../build/lib/libvit_plugin.so \
    --data-path $DATA_DIR \
    --batch-size 32 \
    --eval_batch_size 32\
