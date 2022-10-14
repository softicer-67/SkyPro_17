import json
from settings import DB_PASS
import psycopg2
from psycopg2 import Error


def user_option():
    option = input()
    return option


def get_ads():
    try:
        # Подключиться к существующей базе данных
        connection = psycopg2.connect(user="postgres",
                                      # пароль, который указали при установке PostgreSQL
                                      password=DB_PASS,
                                      host="127.0.0.1",
                                      port="5432",
                                      database="new_db")

        cursor = connection.cursor()
        postgreSQL = "select * from new"

        cursor.execute(postgreSQL)
        shop = cursor.fetchall()

        print("Вывод каждой строки и ее столбцов")
        for row in shop:
            print("Id: ", row[0], )
            print("Товар: ", row[1])
            print("Описание: ", row[4])
            print("Цена: ", row[3], '\n')

    except (Exception, Error) as error:
        print("Ошибка при работе с PostgreSQL", error)
    finally:
        if connection:
            cursor.close()
            connection.close()
            print("Соединение с PostgreSQL закрыто")


def get_user_ads():
    user_input = input("Введи имя: ")
    try:
        # Подключиться к существующей базе данных
        connection = psycopg2.connect(user="postgres",
                                      # пароль, который указали при установке PostgreSQL
                                      password=DB_PASS,
                                      host="127.0.0.1",
                                      port="5432",
                                      database="new_db")

        cursor = connection.cursor()
        postgreSQL = f"SELECT * FROM new JOIN author on author.c1 = new.c3 where author.c2 = '{user_input}'"
                             


        cursor.execute(postgreSQL)
        shop = cursor.fetchall()

        print("Вывод каждой строки и ее столбцов")
        for row in shop:
            # if row[8] == user_input:
            print("-" * 100)
            print("Id: ", row[0], )
            print("Товар: ", row[1])
            print("Автор: ", row[8])
            print("Цена: ", row[3], '\n')

    except (Exception, Error) as error:
        print("Ошибка при работе с PostgreSQL", error)
    finally:
        if connection:
            cursor.close()
            connection.close()
            print("Соединение с PostgreSQL закрыто")


def get_sort():
    print("Введи интервал цен")
    min_input = int(input("От: "))
    max_input = int(input("До: "))
    try:
        # Подключиться к существующей базе данных
        connection = psycopg2.connect(user="postgres",
                                      # пароль, который указали при установке PostgreSQL
                                      password=DB_PASS,
                                      host="127.0.0.1",
                                      port="5432",
                                      database="new_db")

        cursor = connection.cursor()
        postgreSQL = "select * from new order by c4"

        cursor.execute(postgreSQL)
        shop = cursor.fetchall()

        print("Вывод каждой строки и ее столбцов")
        for row in shop:
            if min_input <= row[3] <= max_input:
                print("-" * 100)
                print("Id: ", row[0])
                print("Товар: ", row[1])
                print("Описание: ", row[4])
                print("Цена: ", row[3], '\n')

    except (Exception, Error) as error:
        print("Ошибка при работе с PostgreSQL", error)
    finally:
        if connection:
            cursor.close()
            connection.close()
            print("Соединение с PostgreSQL закрыто")


def get_city():
    user_input = input("Введи город: ")
    try:
        # Подключиться к существующей базе данных
        connection = psycopg2.connect(user="postgres",
                                      # пароль, который указали при установке PostgreSQL
                                      password=DB_PASS,
                                      host="127.0.0.1",
                                      port="5432",
                                      database="new_db")

        cursor = connection.cursor()
        postgreSQL = f"SELECT * FROM new JOIN address on address.c1 = new.c3 where address.c2 like '{user_input}%'"

        cursor.execute(postgreSQL)
        shop = cursor.fetchall()

        print("Вывод каждой строки и ее столбцов")
        for row in shop:
            # if row[8] == user_input:
            print("-" * 100)
            print("Id: ", row[0], )
            print("Товар: ", row[1])
            print("Автор: ", row[8])
            print("Цена: ", row[3], '\n')

    except (Exception, Error) as error:
        print("Ошибка при работе с PostgreSQL", error)
    finally:
        if connection:
            cursor.close()
            connection.close()
            print("Соединение с PostgreSQL закрыто")


def get_user_price():
    user_input = input("Введи имя: ")
    try:
        # Подключиться к существующей базе данных
        connection = psycopg2.connect(user="postgres",
                                      # пароль, который указали при установке PostgreSQL
                                      password=DB_PASS,
                                      host="127.0.0.1",
                                      port="5432",
                                      database="new_db")

        cursor = connection.cursor()
        postgreSQL = f"SELECT * FROM new JOIN author on author.c1 = new.c3 where author.c2 = '{user_input}'"

        cursor.execute(postgreSQL)
        shop = cursor.fetchall()

        print("Вывод каждой строки и ее столбцов")
        for row in shop:
            # if row[8] == user_input:
            print("-" * 100)
            print("Id: ", row[0], )
            print("Товар: ", row[1])
            print("Автор: ", row[8])
            print("Цена: ", row[3], '\n')

    except (Exception, Error) as error:
        print("Ошибка при работе с PostgreSQL", error)
    finally:
        if connection:
            cursor.close()
            connection.close()
            print("Соединение с PostgreSQL закрыто")