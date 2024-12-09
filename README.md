### cuda base image
```
docker build -f cuda_dockerfile -t cuda_default:v1.0 .
```
### cuda 12.5 image
```
docker build -f cuda12.1_dockerfile -t cuda_12.1:v1.0 .
```
### torch base image
```
docker build -f torch_dockerfile -t torch_default:v1.0 .
```
### ubuntu base image
```
docker build -f ubuntu_dockerfile -t ubuntu:22.04 .
```
