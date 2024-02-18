export CUDA_VISIBLE_DEVICES=1,2,3

# cd ..
python -m torch.distributed.launch --nproc_per_node=3 --use_env  train_distributed.py \
-c configs/pa_po_kitti_trainval.yaml \
-l logs \
-n kitti_seg_distributed \
