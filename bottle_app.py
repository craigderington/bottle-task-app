# A simple Bottle Hello World app for you to get started with...
import sqlite3
from bottle import default_app, route, template, request, debug, error

@route('/')
def hello_world():
    return 'Hello from Bottle Homepage!'

@route('/index')
def index():
    return 'Greetings, Bottle Index Page!'

@route('/todo')
def todo_list():

    conn = sqlite3.connect('mybottle/todo.db')
    c = conn.cursor()
    c.execute("SELECT id, task FROM todo;")
    result = c.fetchall()
    c.close()

    output = template('make_table', rows=result)
    return output

@route('/new_task', method='GET')
def new_item():

    if request.GET.get('save', '').strip():

        new = request.GET.get('task', '').strip()
        conn = sqlite3.connect('mybottle/todo.db')
        c = conn.cursor()

        c.execute("INSERT INTO todo (task, status) VALUES (?,?)", (new,1))
        new_id = c.lastrowid

        conn.commit()
        c.close()

        return '<p>The new task was inserted into the database.  The new ID is %s</p>' % new_id

    else:
        return template('new_task.tpl')

@error(403)
def mistake(code):
    return 'There is a problem with your URL!'

@error(404)
def mistake404(code):
    return 'Sorry, the requested page does not exist!'

application = default_app()
debug(True)
