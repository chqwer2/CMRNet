
# python 3.7

conda activate drive
pip install sacred==0.7.3

# pip install git+https://gitlab.com/m1lhaus/blender-mathutils.git

# Correlation RuntimeError: CUDA call failed
# Solved by  models/CMRNet/correlation_package/



# Step 0 PreProcess

python preprocess/kitti_maps.py --sequence 00 --kitti_folder ../kitti/dataset
python preprocess/kitti_maps.py --sequence 03 --kitti_folder ../kitti/dataset
python preprocess/kitti_maps.py --sequence 05 --kitti_folder ../kitti/dataset
python preprocess/kitti_maps.py --sequence 06 --kitti_folder ../kitti/dataset
python preprocess/kitti_maps.py --sequence 07 --kitti_folder ../kitti/dataset
python preprocess/kitti_maps.py --sequence 08 --kitti_folder ../kitti/dataset --end 3000
python preprocess/kitti_maps.py --sequence 08 --kitti_folder ../kitti/dataset --start 3000
python preprocess/kitti_maps.py --sequence 09 --kitti_folder ../kitti/dataset


# Step 1 Train
python main_visibility_CALIB.py with batch_size=24 \
       data_folder=../kitti/dataset/sequences \
       epochs=300 max_r=10 max_t=2 BASE_LEARNING_RATE=0.0001 \
       savemodel=./checkpoints/ test_sequence=0


# Step 2 Test
python evaluate_iterative_single_CALIB.py with test_sequence=00 \
       maps_folder=local_maps \
       data_folder=../kitti/dataset weight="['./checkpoints/weights.tar']"


# Iterative refinement example






