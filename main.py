from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, Dockerized World! This is an HTTP service."

if __name__ == "__main__":
    # 必须监听 0.0.0.0 才能在容器外访问
    app.run(host='0.0.0.0', port=5000)
