from db import *

def query1(coin, currencyCoin):
    cur = db_cursor()

    cur.execute("""
    SELECT c.name, c.symbol, er.usd / er2.usd, c2.symbol, er.dttm FROM exchange_rates er
    left join coins c on c.id = er.coin_id
    inner join exchange_rates er2 on er.update_id=er2.update_id
    left join coins c2 on c2.id = er2.coin_id
    WHERE c.name = '{0}' and c2.name='{1}' ORDER BY er.update_id
    """.format(coin, currencyCoin))

    return cur.fetchall()


coin = input("Query 1, please, enter first coin name\n")
currencyCoin = input("Query 1, please, enter second coin name\n")
print("\n")

rows = query1(coin, currencyCoin)

for r in rows:
    print(r[0] + ': 1 ' + r[1] + ' = ' + str(r[2]) + ' ' + r[3] + ' at ' + str(r[4]))
