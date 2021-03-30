# OpenFace-Singularity-environment

```shell
docker build --tag [user_name/repo_name:tag_name] .
docker push [user_name/repo_name:tag_name]
singularity pull docker://[user_name/repo_name:tag_name]
```

```shell
cd OpenFace
mkdir build
cd build
cmake -D CMAKE_CXX_COMPILER=g++-8 -D CMAKE_C_COMPILER=gcc-8 -D CMAKE_BUILD_TYPE=RELEASE ..
make
```

Done!
