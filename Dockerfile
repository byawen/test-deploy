# 使用官方轻量级 Python 镜像
FROM python:3.9-slim

# 设置容器内的当前工作目录
WORKDIR /app

# 将当前目录下的所有文件复制到容器的 /app 目录下
COPY . /app

# (可选) 如果你有依赖项，取消下面一行的注释
# RUN pip install --no-cache-dir -r requirements.txt

# 运行你的 Python 程序
CMD ["python", "hello.py"]
