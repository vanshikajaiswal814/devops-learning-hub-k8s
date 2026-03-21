# 🚀 DevOps Learning Hub

A Django-based web application that curates the best free DevOps learning resources in a structured, topic-wise format for beginners and professionals.

This project demonstrates end-to-end DevOps practices including application development, containerization, and deployment readiness.

---

## 🌟 Features

* 📚 Topic-wise DevOps learning resources
* 🎯 Curated best free courses from industry experts
* 🐳 Fully Dockerized application
* 💻 Clean and responsive UI
* 🚀 Ready for deployment

---

## 🛠️ Tech Stack

* **Backend:** Python, Django
* **Frontend:** HTML, CSS
* **Containerization:** Docker

---

## 📂 Project Structure

DEVOPS/
│
├── Dockerfile
├── requirements.txt
├── manage.py
├── db.sqlite3
│
├── devops/        # Project settings
├── webapp/        # Application code
│   └── templates/
│       └── webapp/
│           └── demo_site.html

---

## 📦 Dependency Management

Project dependencies are managed using `requirements.txt`.

The file was generated using:

pip freeze > requirements.txt

This ensures all required Python packages and their exact versions are captured, enabling consistent builds across environments and inside Docker containers.

---

## 🐳 Docker Setup

### 🔹 Build Docker Image

docker build -t python-web-app .

### 🔹 Run Container

docker run -p 8000:8000 python-web-app

### 🔹 Access Application

http://127.0.0.1:8000/webapp/

---

## 🌍 Docker Hub Image

Pull and run directly:

docker pull vanshikamod/devops-learning-hub:v1
docker run -p 8000:8000 vanshikamod/devops-learning-hub:v1

---

## 🔧 Local Development Setup

### 1. Clone Repository

git clone https://github.com/vanshikajaiswal814/python-devops-app.git
cd python-devops-app

### 2. Create Virtual Environment

python -m venv venv
venv\Scripts\activate   # Windows

### 3. Install Dependencies

pip install -r requirements.txt

### 4. Run Server

python manage.py runserver

---

## 🎯 Key DevOps Concepts Demonstrated

* Application containerization using Docker
* Dependency management using pip and requirements.txt
* Use of `pip freeze` for capturing exact package versions
* Docker image creation and optimization
* Docker Hub integration for image distribution
* Debugging container and port-related issues

---

## 🚀 Future Enhancements

* Add Docker Compose (multi-container setup)
* Integrate CI/CD pipeline using GitHub Actions
* Deploy on cloud platform (AWS / Azure / Render)
* Replace SQLite with PostgreSQL

---

## 👩‍💻 Author

**Vanshika Jaiswal**
Senior Software Engineer

---

## 💡 Project Purpose

This project was built to:

* Strengthen DevOps fundamentals
* Practice real-world containerization
* Create an interview-ready end-to-end project

---

## ⭐ If you like this project

Give it a ⭐ on GitHub and feel free to contribute!
