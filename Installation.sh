

conda install -c conda-forge ninja

# /bask/apps/live/EL8-ice/software/CUDA/11.7.0/include/cuda_runtime_api.h

# conda install -c conda-forge cudatoolkit-dev



CUDA_HOME='/bask/apps/live/EL8-ice/software/CUDA/11.7.0'
# ./~bashrc
   #  export CUDA_ROOT=/usr/local/cuda-9.2
   #  export PATH=$CUDA_ROOT:$CUDA_ROOT/bin:/usr/local/bin:$PATH


export PATH=/bask/apps/live/EL8-ice/software/CUDA/11.7.0/bin:$PATH
export LD_LIBRARY_PATH=/bask/apps/live/EL8-ice/software/CUDA/11.7.0/lib64:$LD_LIBRARY_PATH



python setup.py install --force_cuda --cuda_home=/bask/apps/live/EL8-ice/software/CUDA


cd models/CMRNet/correlation_package/
python setup.py install
#  cuda_runtime_api.h: No such file or directory

cd ../../..

#/bask/apps/live/EL8-ice/software/CUDA/11.7.0/include

python setyp.py install
python setup.py build develop



pip install sacred==0.7.3

# pip install git+https://gitlab.com/m1lhaus/blender-mathutils.git

# Correlation RuntimeError: CUDA call failed
# Solved by  models/CMRNet/correlation_package/*.cc
  #//check for errors
  #//  if (!success) {
  #//    AT_ERROR("CUDA call failed");
  #//  }




conda install -c conda-forge cudatoolkit-dev



cudatoolkit-11.0.3




