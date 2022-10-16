
def get_ads(cursor):
    postgreSQL = "select * from new"

    cursor.execute(postgreSQL)
    shop = cursor.fetchall()

    for row in shop:
        print("-" * 100)
        print("Id: ", row[0])
        print("Товар: ", row[1])
        print("Описание: ", row[4])
        print("Цена: ", row[3], '\n')


def get_user_ads(cursor):
    user_input = input("Введи имя: ")
    postgreSQL = f"SELECT * FROM new JOIN author on author.c1 = new.c3 where author.c2 = '{user_input}'"

    cursor.execute(postgreSQL)
    shop = cursor.fetchall()

    for row in shop:
        print("-" * 100)
        print("Id: ", row[0])
        print("Товар: ", row[1])
        print("Автор: ", row[8])
        print("Цена: ", row[3], '\n')


def get_sort(cursor):
    print("Введи интервал цен")
    min_input = int(input("От: "))
    max_input = int(input("До: "))

    postgreSQL = f"select * from new where c4 between {min_input} and {max_input} order by c4"

    cursor.execute(postgreSQL)
    shop = cursor.fetchall()

    for row in shop:
        print("-" * 100)
        print("Id: ", row[0])
        print("Товар: ", row[1])
        print("Описание: ", row[4])
        print("Цена: ", row[3], '\n')


def get_city(cursor):
    user_input = input("Введи город: ")

    postgreSQL = f"SELECT * FROM new JOIN address on address.c1 = new.c3 where address.c2 like '{user_input}%'"

    cursor.execute(postgreSQL)
    shop = cursor.fetchall()

    for row in shop:
        print("-" * 100)
        print("Id: ", row[0])
        print("Товар: ", row[1])
        print("Автор: ", row[8])
        print("Цена: ", row[3], '\n')


def get_user_price(cursor):
    user_name = input('Введи имя: ')

    postgreSQL = f"""
            SELECT author.c2, sum(c4)
            FROM new 
            JOIN author 
            on author.c1 = new.c3
            where author.c2 = '{user_name}'
            group by author.c2
    """

    cursor.execute(postgreSQL)
    shop = cursor.fetchall()

    for row in shop:
        print("-" * 100)
        print("Автор: ", row[0])
        print("Товаров на сумму: ", row[1], '\n')
