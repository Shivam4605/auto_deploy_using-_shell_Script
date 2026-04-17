#!/bin/bash

# ==========================================
# Java App Auto Deployment Script
# Repo: simple_java_application_with_docker
# ==========================================

set -e

REPO_URL="https://github.com/Shivam4605/simple_java_application_with_docker.git"
PROJECT_NAME="simple_java_application_with_docker"
BRANCH="main"
IMAGE_NAME="java_app"
CONTAINER_NAME="java_container"

clone_repo() {
    echo "📥 Cloning Repository..."

    if [ -d "$PROJECT_NAME" ]; then
        echo "⚠ Repo already exists. Pulling latest code..."
        cd $PROJECT_NAME
        git pull origin $BRANCH
        cd ..
    else
        git clone -b $BRANCH $REPO_URL
    fi
}

build_project() {
    echo "🔨 Building Maven Project..."
    cd $PROJECT_NAME
    ./mvnw clean package -DskipTests
    cd ..
}

stop_old_container() {
    echo "🛑 Removing Old Container..."
    docker stop $CONTAINER_NAME || true
    docker rm $CONTAINER_NAME || true
}

build_docker_image() {
    echo "🐳 Building Docker Image..."
    cd $PROJECT_NAME
    docker build -t $IMAGE_NAME .
    cd ..
}

run_container() {
    echo "🚀 Running Container..."
    docker run -d -p 8080:8080 --name $CONTAINER_NAME $IMAGE_NAME
}

status_check() {
    echo "📌 Running Containers:"
    docker ps
}

main() {
    clone_repo
    build_project
    stop_old_container
    build_docker_image
    run_container
    status_check
    echo "✅ Deployment Successful"
}

main
