#制定node镜像的版本
FROM node:10.10.0
#声明作者
MAINTAINER solocao
#移动当前目录下面的文件到app目录下
ADD . /app/
#进入到app目录下面，类似cd
WORKDIR /app
#安装依赖
RUN yarn
#对外暴露的端口
EXPOSE 3000
#程序启动脚本
CMD ["npm", "start"]