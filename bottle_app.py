import sqlite3
from bottle import route, debug, template, static_file, error

@route('/')
@route('/index')
def index():
    return "Hello from Bottle!"
