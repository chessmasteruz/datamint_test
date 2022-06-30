import time
from turtle import update
import aiohttp
import asyncio
import json
from db import *





def  getCoins():
    cur = db_cursor()
    cur.execute('SELECT * FROM coins')
    return cur.fetchall()


async def getCurrentRate(coinName):
    async with aiohttp.ClientSession() as session:
        async with session.get('https://api.coingecko.com/api/v3/coins/'+ coinName) as response:

            text = await response.text()
            coin = json.loads(text)
            if 'market_data' in coin:
                return coin['market_data']['current_price']['usd']
            

coins = getCoins()
loop = asyncio.get_event_loop()

while True:   
        
    conn = db_conn()
    cur = conn.cursor()

    cur.execute('INSERT INTO updates default values RETURNING id;')
    update_id = cur.fetchone()[0]

    for coin in coins:
        usd = loop.run_until_complete(getCurrentRate(coin[1]))
        if usd is not None:
            cur.execute("INSERT INTO exchange_rates (coin_id, usd, update_id) VALUES({0}, {1}, {2})".format(coin[0], usd, update_id))

    conn.commit()
    cur.close()
    time.sleep(300)