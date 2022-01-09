from sql_connection import get_sql_connection
from pandas import DataFrame


def get_tenpluskill(sql_connection):
    res = []

    cursor = sql_connection.cursor()

    query = (
        "select s.summ_id, s.summ_name, c.cha_name, stats.kill, map.map_name from summonor s, stats, matchlist m, champions c, match_detail md, map where s.summ_id = m.summ_id and m.ml_id =stats.ml_id and m.match_id = md.md_id and md.mapId = map.map_id and stats.championId = c.cha_id and summ_name = '88Rising' and stats.kill > 10 order by 4 desc;")

    cursor.execute(query)

    for (summ_id, summ_name, cha_name, kill, map_name) in cursor:
        res.append({
            'summ_id': summ_id,
            'summ_name': summ_name,
            'cha_name': cha_name,
            'kill': kill,
            'map_name': map_name
        })

    cursor.close()
    sql_connection.close()
    df_lol = DataFrame(res, columns=['summ_id', 'summ_name', 'cha_name', 'kill', 'map_name'])
    return df_lol


def get_top5champion(sql_connection):
    res = []

    cursor = sql_connection.cursor()

    query = (
        "select c.cha_name as 'top 5', count(stats.championId) as 'frequency' from stats, champions c where c.cha_id =  stats.championId group by c.cha_name order by count(stats.championId) desc limit 5;")

    cursor.execute(query)

    for (cha_name, frequency) in cursor:
        res.append({
            'cha_name': cha_name,
            'frequency': frequency
        })

    cursor.close()
    sql_connection.close()
    df_lol = DataFrame(res, columns=['cha_name', 'frequency'])
    return df_lol


def get_winrate(sql_connection):
    res = []

    cursor = sql_connection.cursor()

    query = (
        "select s.summ_id, s.summ_name, CONCAT((sum(case when s1.win = 'TRUE' then 1 else 0 end)/count(s1.win))*100, '%') as 'win rate' from summonor s, matchlist m, stats s1 where s.summ_id = m.summ_id and m.ml_id =s1.ml_id group by s.summ_id;")

    cursor.execute(query)

    for (summ_id, summ_name, winrate) in cursor:
        res.append({
            'summ_id': summ_id,
            'summ_name': summ_name,
            'winrate': winrate
        })

    cursor.close()
    sql_connection.close()
    df_lol = DataFrame(res, columns=['summ_id', 'summ_name', 'winrate'])
    return df_lol


def get_kda(sql_connection):     # (kill+assist)/death
    res = []

    cursor = sql_connection.cursor()

    query = (
        "select s.summ_id, s.summ_name, (sum((s1.kill+s1.assist)/s1.death)/count(*)) as 'kd/a' from summonor s, matchlist m, stats s1 where s.summ_id = m.summ_id and m.ml_id =s1.ml_id group by s.summ_id;")

    cursor.execute(query)

    for (summ_id, summ_name, kda) in cursor:
        res.append({
            'summ_id': summ_id,
            'summ_name': summ_name,
            'kda': kda
        })

    cursor.close()
    sql_connection.close()
    df_lol = DataFrame(res, columns=['summ_id', 'summ_name', 'kda'])
    return df_lol


def get_farmingscore(sql_connection):
    res = []

    cursor = sql_connection.cursor()

    query = (
        "select s.summ_id, s.summ_name, (case when md.mapId = '1' then sum((s1.goldEarned/md.duration)/1000) else sum((s1.goldEarned/md.duration)/1500) end) as 'Farming score' from summonor s, matchlist m, match_detail md, stats s1 where s.summ_id = m.summ_id and m.match_id = md.md_id and m.ml_id =s1.ml_id group by s.summ_id;")

    cursor.execute(query)

    for (summ_id, summ_name, fs) in cursor:
        res.append({
            'summ_id': summ_id,
            'summ_name': summ_name,
            'fs': round(fs, 2)
        })

    cursor.close()
    sql_connection.close()
    df_lol = DataFrame(res, columns=['summ_id', 'summ_name', 'fs'])
    return df_lol


def get_damageconversion(sql_connection):
    res = []

    cursor = sql_connection.cursor()

    query = (
        "select s.summ_id, s.summ_name, (sum(s1.damage)/sum(s1.goldEarned)) as 'damage conversion rate', map.map_name from summonor s, matchlist m, match_detail md, stats s1, map where s.summ_id = m.summ_id and m.match_id = md.md_id and m.ml_id =s1.ml_id and md.mapId = map.map_id group by s.summ_id, map.map_name order by s.summ_id;")

    cursor.execute(query)

    for (summ_id, summ_name, dc, map_name) in cursor:
        res.append({
            'summ_id': summ_id,
            'summ_name': summ_name,
            'dc': round(dc, 2),
            'map_name': map_name
        })

    cursor.close()
    sql_connection.close()
    df_lol = DataFrame(res, columns=['summ_id', 'summ_name', 'dc', 'map_name'])
    return df_lol


def radarvis(sql_connection):
    res = []

    cursor = sql_connection.cursor()

    query = (
        "select s.summ_name, sum(s1.damage), sum(s1.kill), sum(s1.death), sum(s1.assist), sum(s1.goldEarned) from summonor s, matchlist m, stats s1 where s.summ_id = m.summ_id and m.ml_id =s1.ml_id group by s.summ_id;")

    cursor.execute(query)

    for (summ_name, dmg, kill, death, assist, gold) in cursor:
        res.append({
            'summ_name': summ_name,
            'dmg': dmg,
            'kill': kill,
            'death': death,
            'assist': assist,
            'gold': gold
        })

    cursor.close()
    sql_connection.close()
    df_lol = DataFrame(res, columns=['summ_name', 'dmg', 'kill', 'death', 'assist', 'gold'])
    return df_lol


if __name__ == '__main__':
    connection = get_sql_connection()
    #print(get_tenpluskill(connection))
    #print(get_top5champion(connection))
    print(get_winrate(connection))
    #print(get_kda(connection))
    #print(get_farmingscore(connection))
    #print(get_damageconversion(connection))
    #print(radarvis(connection))
