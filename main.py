import os
from app import app

if __name__ == "__main__":
    if os.getenv("FLASK_ENV", "development") != "production":
        app.debug = True
    app.run(host='127.0.0.1', port=8080)
