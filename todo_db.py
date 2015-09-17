import sqlite3

db = sqlite3.connect('todo.db')
c = db.cursor()
c.execute("INSERT INTO todo(id, task, status) VALUES(6,'Task 16A', 1)")
db.commit()
c.close()
print("The database table was created successfully...")
