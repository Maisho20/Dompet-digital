# How to Use This Sample

- Clone this repository
- Make a project directory

   ```plain
    $ mkdir flask-ocr-sample
    $ cd flask-ocr-sample
    ```
- Create a virtual environtment
   ```plain
   $ python -m venv .venv
   ```
- Activate the virtual environtment
   ```plain
   source .venv/bin/activate
   ```
- Install required dependecies from `requirements.txt`
    ```plain
    $ python install -r requirements.txt
    ```
- Copy trained model (*.h5) and labels (*.pkl) to `models/` directory
- Run Flask
    ```plain
    $ flask run
    ```
- By default, Flask service will served on port 5000. In order to use another port, please specify the desired port
    ```plain
    $ flask run --port 5005
    ```

## Notes

- This sample using `opencv_python==4.5.5.64` due to some issues in MacOS. You can change it to comply your spesification.