python infer_visiontransformer_int8_plugin.py \
  --model_type=R50-ViT-B_16 \
  --img_size=384 \
  --pretrained_dir=$WORKSPACE/examples/pytorch/vit/ViT-quantization/output/vit_checkpoint.bin \
  --plugin_path=../../../build/lib/libvit_plugin.so \
  --batch-size=32 \
  --eval_batch_size 32\
  --data-path=$WORKSPACE/examples/pytorch/vit/ViT-quantization/data_512_split \