# Introduce
This is a minimum build system for c++ 23, include std module soupport.

# Required toolchain
```
gcc 15.1
cmake 4.1.0-rc4
ninja
```

# Compile in docker

## Command

```Shell
docker build -t cxx23 . 
docker run -it --rm -v "$(pwd)":/work cxx23 bash -c "cmake -G Ninja && ninja && ./test"
```

## Static linking

Compilation products might not suitable in your linux distribution. You can uncomment target_link_options in CMakelist.txt to build.

# UUID for cmake experimental features

A experimental feature in cmake should be opened manually with a ramdom UUID. To obtain this UUID, you can query it in the cmake's source code repo, for example:

https://github.com/Kitware/CMake/blob/v4.1.0/Help/dev/experimental.rst#c-import-std-support
