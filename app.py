from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Hello CI/CD created by Rahulraj"

app.run(host="0.0.0.0", port=5000)
