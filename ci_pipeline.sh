#!/bin/bash


# 1. Загрузка актуального состояния с сервера
echo "Загрузка актуального состояния с сервера..."
git pull || { echo "Ошибка: не удалось загрузить изменения."; exit 1; }

# 3. Сборка проекта (в данном случае просто проверим, что можно запустить main.py)
echo "Сборка проекта..."
python3 main.py || { echo "Ошибка: не удалось собрать проект."; exit 1; }

# 4. Выполнение unit-тестов
echo "Выполнение unit-тестов..."
python3 -m unittest discover -s . -p test.py || { echo "Ошибка: тесты не прошли."; exit 1; }

# 5. Создание пакета установки
echo "Создание пакета установки..."
# Предполагается, что в корне проекта есть setup.py
python3 setup.py sdist bdist_wheel || { echo "Ошибка: не удалось создать пакет установки."; exit 1; }

# 6. Установка приложения
echo "Установка приложения..."
pip install dist/*.whl || { echo "Ошибка: не удалось установить приложение."; exit 1; }

echo "Процесс CI завершен успешно!"
