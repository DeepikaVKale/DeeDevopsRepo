from flask import *

app = Flask(__name__)

@app.route('/hello', methods=['GET'])
def hello world():
        if(request.method == 'GET'):
                data = {"data":"Hello World"}
                return jasonify(data)


if __name__ == '__main__'
    app.run(host='0.0.0.0',port=9001)

