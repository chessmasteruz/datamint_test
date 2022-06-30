from db import *

def query2(startDttm, endDttm):
    cur = db_cursor()

    cur.execute("""
    SELECT c.name, max(usd) / min (usd) per FROM exchange_rates er
    left join coins c on c.id = er.coin_id
    WHERE dttm BETWEEN '{0}' AND '{1}'
    GROUP BY c.name
    ORDER BY per DESC
    """.format(startDttm, endDttm))

    return cur.fetchall()

startDttm = input("Query 2: please, enter start datetime as string\n")
endDttm = input("Query 2: please, enter end datetime as string\n")
print("\n")

rows = query2(startDttm, endDttm)

for r in rows:
    print(r[0] + ' up ' + str(r[1]*100 - 100) + '%')