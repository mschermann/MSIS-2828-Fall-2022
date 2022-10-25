from random import randint
from this import d
from flask import Flask, jsonify
import json
import psycopg2
import os

app = Flask(__name__)

def get_pg_connection():
    return psycopg2.connect(host=os.environ.get('DB_HOST'), 
                         port= int(os.environ.get('DB_PORT')),
                         database = os.environ.get('DB_DB'),
                         user = os.environ.get('DB_USER'),
                         password = os.environ.get('DB_PASS')
    )

def get_meal_recommendation():

    get_random_meal = """
    SELECT MealName, MealPrice FROM meals ORDER BY RANDOM() LIMIT 1;
    """
    conn = get_pg_connection()
    cursor  = conn.cursor()
    cursor.execute(get_random_meal)

    meal = cursor.fetchall()
    
    conn.close()
    return meal

@app.route('/')
@app.route('/recommendation/')
def index():
    meal = get_meal_recommendation()[0]
    app.logger.debug(meal)
    rec = {"name":meal[0], "price": meal[1]}
    return jsonify(rec)

app.run(host='0.0.0.0', port=os.environ.get('API_PORT'), debug=True)
