from flask import Flask, render_template, request, jsonify
import cv2
import numpy as np
import logging
from prediction import KTPOCR
import os

app = Flask(__name__, template_folder='templates')

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
    nama, alamat, agama, kecamatan = KTPOCR.process_image(temp_image_path)

    # Membuat respons sesuai format yang diinginkan
    response = {
        'agama' : str(agama),
        'alamat': str(alamat),
        'nama': str(nama),
        'kecamatan': str(kecamatan),
    }

    # Menghapus file gambar sementara
    os.remove(temp_image_path)

    # Mengembalikan respons dalam format JSON
    return jsonify(response)