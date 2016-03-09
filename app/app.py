#!/usr/bin/env python
# coding: utf8

from flask import Flask
from config import config

app = Flask('template')
app.debug = config.get('DEBUG', False) == 'yes'


@app.route('/')
def home():
    return 'It Works!'
