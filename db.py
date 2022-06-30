import psycopg2

def db_conn():
    conn = psycopg2.connect(dbname='datamint', user='postgres', 
                        password='postgres', host='localhost')
    return conn


def db_cursor():
    return db_conn().cursor()