from flask import Flask, render_template
import os
import json
from urllib.request import urlopen 


app = Flask(__name__)


@app.route('/')
@app.route('/index')
def get_recommendation():
    url = "http://{api_host}:{api_port}/recommendation/".format(api_host = os.environ.get("API_HOST"),
                                                                api_port = os.environ.get("API_PORT"))
    response = urlopen(url)
    data = response.read()
    dict = json.loads(data)

    return render_template('index.html', meal=dict['name'], price=dict['price'])

app.run(host='0.0.0.0', port=os.environ.get("CONSUMER_PORT"))
