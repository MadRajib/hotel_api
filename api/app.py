from flask import Flask, g
from flask_restful import Resource, Api
import sqlite3
from contextlib import closing


DATABASE = 'database.db'

app = Flask(__name__)
api = Api(app)


# connect ot db
def connect_db():
    return sqlite3.connect(DATABASE)

# before every request connect to db
@app.before_request
def before_request():
    g.db = connect_db()

# when the connection is over close the connection to db
@app.teardown_request
def teardown_request(exception):
    if hasattr(g, 'db'):
        g.db.close()

# Initialise db with initial schema
def init_db():
    with closing(connect_db()) as db:
        with app.open_resource('schema.sql',mode='r') as f:
            db.cursor().executescript(f.read())
        db.commit()

# helper function
def get_connection():
    db = getattr(g, '_db', None) 
    if db is None:
        db = g._db = connect_db()
    return db

# query helper function.run(debug=True)
def query_db(query, args=(), one=False):
    cur = g.db.execute(query, args)
    rv = [dict((cur.description[idx][0], value)
               for idx, value in enumerate(row)) for row in cur.fetchall()]
    return (rv[0] if rv else None) if one else rv



# Resource end points

class HotelDetail(Resource):
  def get(self,hotel_id):
    hotel = query_db('select * from HOTEl_DETAIL where id = ?',
                [hotel_id], one=True)
    if hotel is None:
        return {"hotel":"not found"}
    else:
       return hotel


api.add_resource(HotelDetail, '/api/hotelDetail/<int:hotel_id>')


if __name__ == '__main__':
    init_db()
    app.run(debug=True)
    