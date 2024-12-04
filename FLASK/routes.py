from flask import request, jsonify
from app import app, mysql

@app.route('/api/products', methods=['GET'])
def get_products():
    cursor = mysql.connection.cursor()
    cursor.execute("SELECT * FROM products")
    products = cursor.fetchall()
    return jsonify(products)
