#!/bin/bash

echo "============================="
echo "Zomato Devops Project Setup"
echo "By Rejay"
echo "Date: $(date)"
echo "============================="



PROJECT_DIR="/home/rejay/zomato-devops-project"

echo ""
echo "Checking project structure..."

FOLDERS=("app" "docker" "jenkins" "k8s" "terraform" "monitoring" "docs")

for FOLDER in "${FOLDERS[@]}"; do
  if [ -d "$PROJECT_DIR/$FOLDER" ]; then
    echo "✔  $FOLDER exists"
  else
    echo "✘  $FOLDER missing — creating..."
    mkdir -p "$PROJECT_DIR/$FOLDER"
  fi
done

echo ""
echo "================================"
echo " Project structure verified!"
echo "================================"
echo ""
ls -la $PROJECT_DIR

