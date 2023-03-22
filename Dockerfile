# 베이스 이미지 지정
# ex) FROM ubuntu:latest
FROM ros:melodic

# Working Directory 지정
RUN mkdir -p /catkin_ws/src
WORKDIR /catkin_ws/src
# COPY . /catkin_ws/src

# 이미지에 포함될 패키지 설치를 위한 커맨드 실행
RUN apt-get update && apt-get install -y ros-melodic-navigation ros-melodic-robot-localization ros-melodic-rosbridge-server

# 환경변수 설정
ENV CATKIN_WS=/catkin_ws
ENV PATH=$CATKIN_WS/devel/bin:$PATH

# 이미지에서 실행할 커맨드 설정
CMD ["roscore"]
CMD ["roslaunch", "rosbridge_server", "rosbridge_websocket.launch"]
