from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World! Deployed with Ansible"

if __name__ == "__main__":
    app.run(host="192.168.33.10")  