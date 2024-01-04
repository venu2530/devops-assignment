# Flask Redis Counter

This is a simple Flask application that displays a message on the webpage, indicating the visitor count fetched from Redis. The counter increments with each visit to the index page.

## Prerequisites

Before running the application, make sure you have Docker installed on your system.

## Getting Started

Follow the steps below to set up and run the application:

1. Clone the repository:

    ```bash
    git clone <repository_url>
    cd flask-redis-counter
    ```

2. Build and run the Docker containers:

    ```bash
    docker-compose up --build
    ```

3. Open your web browser and navigate to [http://localhost:5000](http://localhost:5000). You should see a message indicating the visitor count.

4. Refresh the page, and the counter will increment.

## Project Structure

- `app.py`: The main Flask application file.
- `requirements.txt`: File containing Python dependencies.
- `Dockerfile`: Configuration for building the Docker image.
- `docker-compose.yml`: Docker Compose file for defining services (Flask web app and Redis).

## Technologies Used

- Flask: A lightweight WSGI web application framework.
- Redis: An open-source, in-memory data structure store.

## Contributing

Feel free to contribute to the project by opening issues or pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
