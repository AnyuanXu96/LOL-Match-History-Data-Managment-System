import mysql.connector

__cnx = None


def get_sql_connection():
    global __cnx
    __cnx = mysql.connector.connect(user='root', password='qfcjplpQWE1!',
                                    host='127.0.0.1',
                                    database='lol_mach_history')
    return __cnx
