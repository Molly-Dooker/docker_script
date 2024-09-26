# cuda 도커 빌드
```
docker build -f cuda_dockerfile -t cuda_default:v1.0 .
```






# 도커실행 (w/ args)
```
docker run -d -t --name cuda_container -v $(pwd):/workspace --gpus all cuda_docker:v1.0
```
```
vscode 연결 or
docker exec -it cuda_container /bin/bash
```
