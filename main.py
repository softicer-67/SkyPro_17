from functions import *


def main():
    while True:
        print('[1] Вывести все объявления\n'
              '[2] Вывести объявления конкретного пользователя\n'
              '[3] Вывести объявления в диапазоне цен, сортировка данных в порядке возрастания цены\n'
              '[4] Вывести объявления для конкретного города\n'
              '[5] Вывести информацию для определенного пользователя и цены\n'
              '[0] - Выход\n')
        user_input = input('Выбрать вариант: ')
        match user_input:
            case '1':
                get_ads()
            case '2':
                get_user_ads()
            case '3':
                get_sort()
            case '4':
                get_city()
            case '5':
                get_user_price()
            case _:
                exit('Exit')


if __name__ == '__main__':
    main()
