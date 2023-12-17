from flask import Flask, render_template, request, jsonify
import cv2
import os
import sqlite3
from prediction import KTPOCR
import atexit

app = Flask(__name__, template_folder='templates')

# Database initialization function
def initialize_database():
    conn = sqlite3.connect('response_data.db')
    cursor = conn.cursor()

    # Create a table if it doesn't exist
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS response_data (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nama TEXT,
            alamat TEXT,
            agama TEXT,
            kecamatan TEXT,
            nik TEXT,
            ttl TEXT
        )
    ''')

    conn.commit()
    conn.close()

# Initialize the SQLite database
initialize_database()

# Function to save the response to the database
def save_to_database(response):
    conn = sqlite3.connect('response_data.db')
    cursor = conn.cursor()

    # Insert the response data into the database
    cursor.execute('''
        INSERT INTO response_data (nama, alamat, agama, kecamatan, nik, ttl)
        VALUES (?, ?, ?, ?, ?, ?)
    ''', (response['nama'], response['alamat'], response['agama'], response['kecamatan'], response['nik'], response['ttl']))

    conn.commit()
    conn.close()

# Function to retrieve data from the database
def retrieve_data_from_database():
    conn = sqlite3.connect('response_data.db')
    cursor = conn.cursor()

    # Retrieve all data from the database
    cursor.execute('SELECT * FROM response_data')
    rows = cursor.fetchall()

    # Convert the data to a list of dictionaries
    data = [{'nama': row[1], 'alamat': row[2], 'agama': row[3], 'kecamatan': row[4], 'nik': row[5], 'ttl': row[6]} for row in rows]

    conn.close()

    return data

# Function to delete the database when Flask is stopped
def delete_database():
    try:
        os.remove('response_data.db')
    except FileNotFoundError:
        pass

# Register the delete_database function to be called on exit
atexit.register(delete_database)

# Flask routes...

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/upload', methods=['POST'])
def upload():
    # Mengambil file gambar dari request POST
    image_file = request.files['img']

    # Simpan file gambar sementara
    temp_image_path = 'temp_image.jpg'
    image_file.save(temp_image_path)

    # Memproses gambar menggunakan KTPOCR
    nama, alamat, agama, kecamatan, nik, ttl = KTPOCR.process_image(temp_image_path)

    # Membuat respons sesuai format yang diinginkan
    response = {
        'agama': str(agama),
        'alamat': str(alamat),
        'nama': str(nama),
        'kecamatan': str(kecamatan),
        'nik': str(nik),
        'ttl': str(ttl)
    }

    # Save the response to SQLite database
    save_to_database(response)

    # Menghapus file gambar sementara
    os.remove(temp_image_path)

    # Mengembalikan respons dalam format JSON
    return jsonify(response)

@app.route('/get_data', methods=['GET'])
def get_data():
    # Retrieve data from the SQLite database
    data = retrieve_data_from_database()

    # Return the data in JSON format
    return jsonify(data)

if __name__ == '__main__':
    app.run(debug=True)
