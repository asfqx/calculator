from setuptools import setup, find_packages

setup(
    name='calculator',  # Укажите уникальное имя вашего проекта
    version='0.1',  # Версия вашего проекта
    packages=find_packages(),  # Найдите все пакеты
    install_requires=[
        math
        matplotlib.pyplot
        numpy
        sys
        PyQt6.QtWidgets
        
    ],
    entry_points={
        'console_scripts': [
            'your_command=main:main_function',  # Замените на вашу команду и функцию
        ],
    },
    author='Polinka',
    license='MIT',
    url='https://github.com/asfqx/calculator/tree/main',  # URL вашего проекта (если есть)
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: Linux',
    ],
    python_requires='>=3.6',  # Минимальная версия Python
)
