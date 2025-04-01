# app.py

import os

from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    version = os.environ.get("APP_VERSION")
    return {"version": version}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
