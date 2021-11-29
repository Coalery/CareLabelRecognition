from os.path import join
from flask import Flask, redirect, url_for, request, jsonify
import model
import pathlib

model.initialize()
app = Flask(__name__)

@app.route('/', methods=['GET'])
def getIndex():
  return jsonify({}), 200

@app.route('/', methods=['POST'])
def index():
  file = request.files['file']
  path = join(pathlib.Path(__file__).parent.resolve(), 'img', file.filename)
  file.save(path)

  return jsonify({ 'result': model.predict(path) }), 200