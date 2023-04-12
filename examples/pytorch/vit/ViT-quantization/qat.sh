python -m torch.distributed.launch --nproc_per_node 1 \
    --master_port 12345 main.py \
    --train \
    --name vit \
    --pretrained_dir calib-checkpoint/R50-ViT-B_16_calib.pth \
    --data-path $DATA_DIR \
    --model_type R50-ViT-B_16 \
    --quant-mode ft2 \
    --img_size 384 \
#    --distill \
#    --teacher $CKPT_DIR/R50-ViT-B_16.npz \
    --output qat_output \
    --quant-mode ft2\
    --batch-size 24 \
    --num-epochs 100 \
    --qat-lr 1e-3