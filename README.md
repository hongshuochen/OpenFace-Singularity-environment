# OpenFace-Singularity-environment

On your local machine:
```shell
docker build --tag [user_name/repo_name:tag_name] .
docker push [user_name/repo_name:tag_name]
```

On HPC server:
```shell
singularity pull docker://[user_name/repo_name:tag_name]
singularity shell [repo_name_tag_name].sif
```

Or you could use my predfined environment:
```
singularity pull docker://hongshuo0729/openface
singularity shell openface_latest.sif
```

```
cd OpenFace
mkdir build
cd build
cmake -D CMAKE_CXX_COMPILER=g++-8 -D CMAKE_C_COMPILER=gcc-8 -D CMAKE_BUILD_TYPE=RELEASE ..
make
```

Testing image:
```
curl -o tesla.jpg https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Nicola_Tesla_LCCN2014684845.jpg/559px-Nicola_Tesla_LCCN2014684845.jpg 
```

Test:
```shell
./build/bin/FaceLandmarkImg -f tesla.jpg
```

