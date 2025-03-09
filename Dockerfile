# 使用 OpenJDK 8 作为基础镜像
FROM openjdk:8-jdk-alpine

# 维护者信息
LABEL maintainer="DS"

# 声明 /tmp 为匿名卷
VOLUME /tmp

# 暴露 8080 端口
EXPOSE 8080

# 定义构建参数
ARG JAR_FILE=target/JinkinsTest.jar

# 将 JAR 文件添加到镜像中
ADD ${JAR_FILE} app.jar

# 设置容器启动命令
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]