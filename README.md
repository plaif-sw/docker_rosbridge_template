# ROS & ROS-Bridge Docker Template

ROSBridge 및 X-Window(GUI) 연결을 자동으로 세팅하기  위한 Dockerfile과 docker-compose.yml 파일

## Getting Started

`Dockerfile`을 이용한 빌드, `docker-compose.yml` 을 이용한 container 실행을 다룸

### 사전필수사항

#### Docker 설치

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

#### 환경변수 설정

docker 안의 GUI Application을 띄우기 위해서는 X Windows를 연결해주어야함

* TODO: Windows
* [OS X](https://github.com/youngmin-gwon/what-i-studied/blob/main/ros/setup-for-mac.md)
* TODO: Linux

다음 사항을 `~/.bashrc` 혹은 `~/.zshrc`에 설정
```bash
export DOCKER_DISPLAY=$(ifconfig en0 | grep inet\ | awk '{ print $2 }' | awk '{ print $1 ":0" }')

```

### Usage

#### Image 빌드

`Dockerfile` 을 이용하여 빌드

`docker build -t {image-name} {dockerfile-path}`

```shell
docker build -t "ros-template" .
```

#### 이미지 기반 Container 실행

```shell
docker-compose up
```

## Authors

* **Youngmin Gwon** - *Initial work* - **[PLAIF SW](https://github.com/plaif-sw)**


## Acknowledgments

* **[Juseong Lee](https://github.com/powerstrong)**
