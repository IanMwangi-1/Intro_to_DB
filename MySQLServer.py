#!/usr/bin/env python3
import os
import mysql.connector
from mysql.connector import Error

def create_database():
    conn = None
    try:
        host = os.environ.get("MYSQL_HOST", "127.0.0.1")
        user = os.environ.get("MYSQL_USER", "root")
        password = os.environ.get("MYSQL_PWD", "root")
        port = int(os.environ.get("MYSQL_PORT", 3306))

        conn = mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            port=port
        )

        if conn.is_connected():
            cursor = conn.cursor()
            # Use IF NOT EXISTS — allowed and avoids SELECT/SHOW usage
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
            print("Database 'alx_book_store' created successfully!")
    except Error as e:
        print(f"Error while connecting to MySQL: {e}")
    finally:
        try:
            if conn and conn.is_connected():
                cursor.close()
                conn.close()
                # Optional close message:
                # print("MySQL connection closed.")
        except NameError:
            pass

if __name__ == "__main__":
    create_database()
