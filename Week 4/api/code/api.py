from random import randint
from flask import Flask, jsonify
import json
import os

app = Flask(__name__)

def get_meal_recommendation():

    meals = [
        {'name':'Krusty Burger', 'price':4.99},
        {'name':'Krusty Burger2', 'price':6.99},
        {'name':'Double Krusty Burger','price':8.99},
        {'name':'Deep Fried Krusty Burger', 'price':12.99},
        {'name':'Mother Nature Burger', 'price':7.99},
        {'name':'Double Double Double Double', 'price':12.99},
        {'name':'Meat-Flavored Sandwich',  'price':0.99},
        {'name':'The Clogger', 'price':3.99},
        {'name':'Whatchamachicken', 'price':4.99},
        {'name':'Krusty Popcorn', 'price':8.99},
        {'name':'Soda', 'price':2.99},
        {'name':'Mega Sugar Soda', 'price':2.99},
        {'name':'Heart Failure Fries', 'price':3.99},
        {'name':'Krusty-Partially-Gelatinated-Non-Dairy-Gum-Based-Beverage', 'price':8.99},
        {'name':'Hot Lettuce Injection', 'price':8.99}
        ]

    return meals[randint(0,(len(meals)-1))]

@app.route('/')
@app.route('/recommendation/')
def index():
    return jsonify(get_meal_recommendation())

app.run(host='0.0.0.0', port=os.environ.get('API_PORT'))
