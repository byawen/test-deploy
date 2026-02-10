# 使用官方轻量镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 先安装依赖，利用 Docker 缓存层优化构建速度
RUN pip install --no-cache-dir flask

# 复制当前目录代码到容器
COPY . .

# 暴露服务端口（仅做声明）
EXPOSE 5000

# 启动 Flask 应用
CMD ["python", "app.py"]
