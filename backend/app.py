from flask import Flask, jsonify
import socket

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, World!"

@app.route('/info')
def info():
    hostname = socket.gethostname()
    ip_address = socket.gethostbyname(hostname)
    return jsonify({
        'hostname': hostname,
        'ip_address': ip_address
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
