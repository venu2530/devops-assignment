from flask import Flask
import redis

app = Flask(__name__)
redis_client = redis.StrictRedis(host='redis', port=6379, db=0)

@app.route('/')
def index():
    # Increment the counter in Redis
    counter = redis_client.incr('visitor_counter')
    return f'This is the {counter} visitor.'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
