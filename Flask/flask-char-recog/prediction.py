from tensorflow.keras.models import load_model
import cv2
import numpy as np
import joblib

def preprocessing(img):
    img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    _,img = cv2.threshold(img, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
    img = cv2.resize(img, (28, 28))
    img = img.astype('float32') / 255
    img = np.expand_dims(img, axis=-1)
    img = np.reshape(img, (1, 28, 28, 1))

    return img

def predict(img):
    model = load_model('models/network')
    labels = joblib.load('models/char_labels.pkl')

    # preprocessing input image
    img = preprocessing(img)
    
    # make prediction
    pred = model.predict(img)
    pred_conf = np.amax(pred)
    pred_index = np.argmax(pred)
    pred_label = labels[pred_index]
    
    return pred_label, pred_conf