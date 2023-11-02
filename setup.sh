#!/bin/bash

# Создание виртуального окружения
python -m venv venv

# Активация виртуального окружения
source venv/bin/activate  # На Windows: .\venv\Scripts\activate

# Создание файлов
touch .env
echo "*.ipynb_checkpoints" > .gitignore
echo "*.pyc" >> .gitignore
echo "__pycache__/" >> .gitignore
echo "venv/" >> .gitignore
echo "# Название проекта" > README.md
echo "## Описание" >> README.md
echo "pip" > requirements.txt  # добавь сюда свои зависимости
echo '{
 "cells": [],
 "metadata": {},
 "nbformat": 4,
 "nbformat_minor": 4
}' > notebook.ipynb

# Деактивация виртуального окружения
deactivate
