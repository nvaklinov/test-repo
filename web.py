#!/usr/bin/python

from flask import Flask
from flask import render_template
import os

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello DevOps"

@app.route("/picture")
def pic():
    return render_template('index.html')

if __name__ == "__main__":
         app.run(host='0.0.0.0')
