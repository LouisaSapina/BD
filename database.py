import pymysql
from config import host, user, password, db_name


try:
    connection = pymysql.connect(
        host=host,
        port=3306,
        user=user,
        password=password,
        database=db_name,
        cursorclass=pymysql.cursors.DictCursor
    )
    print("Successfully connected!")
    print("#" * 20)

    try:
        #cursor = connection.cursor()


        # create table
        with connection.cursor() as cursor:
            create_table_query = "SELECT * FROM `Client_`"
            cursor.execute(create_table_query)
            print("Table created successfully")

            # insert data
            with connection.cursor() as cursor:
                insert_query = "INSERT INTO Client_ (Name_, Surname, Thirdname, Phone, Adres, Nomer_cheta, ID_number, IIN, Number_contract) VALUES ('Ginevra', 'Molly', 'Weasley', '874738031', 'London, Street 5', 5169787, 02012865125, 546328, 1);"
                cursor.execute(insert_query)
                connection.commit()

            # with connection.cursor() as cursor:
            #     insert_query = "INSERT INTO Client_ (Name_, Surname, Thirdname, Phone, Adres, Nomer_cheta, ID_number, IIN, Number_contract) VALUES ('Fred', 'First', 'Weasley 2', '874738044', 'London, Street 6', 5169759, 02012865889, 54678, 2);"
            #     cursor.execute(insert_query)
            #     connection.commit()

            # with connection.cursor() as cursor:
            #     insert_query = "INSERT INTO Client_ (Name_, Surname, Thirdname, Phone, Adres, Nomer_cheta, ID_number, IIN, Number_contract) VALUES ('George', 'Second', 'Weasley', '874738045', 'London, Street 7', 5169743, 02012857882, 54628, 3);"
            #     cursor.execute(insert_query)
            #     connection.commit()

            # update data
            # with connection.cursor() as cursor:
            #     update_query = "UPDATE `Client_` SET Adres = 'Almaty, Street 8' WHERE Name_ = 'George';"
            #     cursor.execute(update_query)
            #     connection.commit()

            # with connection.cursor() as cursor:
            #     select_all_rows = "SELECT * FROM Client_ WHERE Thirdname LIKE 'Weasley%';"
            #     cursor.execute(select_all_rows)
            #     connection.commit()
            #     rows = cursor.fetchall()
            #     for row in rows:
            #         print(row)
            #     print('')

            # delete data
            with connection.cursor() as cursor:
                delete_query = "DELETE FROM `Client_` WHERE id_client = 3;"
                cursor.execute(delete_query)
                connection.commit()



            # select all data from table
            # with connection.cursor() as cursor:
            #     select_all_rows = "SELECT * FROM `Client_`"
            #     cursor.execute(select_all_rows)
            #     # cursor.execute("SELECT * FROM `Client_`")
            #     rows = cursor.fetchall()
            #     for row in rows:
            #         print(row)
            #     print("#" * 20)


    finally:
        connection.close()

except Exception as ex:
    print("Connection refused")
    print(ex)

