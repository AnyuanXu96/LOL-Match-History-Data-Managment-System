from history_dao import get_top5champion, radarvis, get_kda
from sql_connection import get_sql_connection
import matplotlib.pyplot as plt
import numpy as np
import plotly.graph_objects as go
import plotly.offline as pyo


def vis_topchampion(df):
    ax = df.plot.bar(x='cha_name', y='frequency')
    ax.set_ylabel('Frequency')
    ax.set_title('top 5 hottest champion')
    plt.xticks(rotation='horizontal')
    ax.get_legend().remove()
    for p in ax.patches:
        ax.annotate(str(p.get_height()), (p.get_x() * 1.005, p.get_height() * 1.005))
    plt.show()


def vis_kda(df):
    df = df[["summ_name", "kda"]]
    df['kda'] = df['kda'].astype(int, errors='raise')
    ax = df.plot.bar(x='summ_name', y='kda')
    ax.set_ylabel('kda')
    ax.set_title('KDA stats')
    plt.xticks(rotation='vertical',fontsize=6)
    ax.get_legend().remove()
    for p in ax.patches:
        ax.annotate(str(p.get_height()), (p.get_x() * 1.005, p.get_height() * 1.005))
    plt.show()


def vis_radar(df, name):
    stats = []
    target_df = df.loc[df['summ_name'] == name]
    # dmg
    target_df.loc[(target_df.dmg > 700000), 'dmg'] = 5
    target_df.loc[(target_df.dmg > 500000) & (target_df.dmg <= 700000), 'dmg'] = 4
    target_df.loc[(target_df.dmg > 400000) & (target_df.dmg <= 500000), 'dmg'] = 3
    target_df.loc[(target_df.dmg > 300000) & (target_df.dmg <= 400000), 'dmg'] = 2
    target_df.loc[(target_df.dmg > 200000) & (target_df.dmg <= 300000), 'dmg'] = 1
    target_df.loc[(target_df.dmg > 6) & (target_df.dmg <= 200000), 'dmg'] = 0
    # kill
    target_df.loc[(target_df.kill > 90), 'kill'] = 5
    target_df.loc[(target_df.kill > 70) & (target_df.kill <= 90), 'kill'] = 4
    target_df.loc[(target_df.kill > 50) & (target_df.kill <= 70), 'kill'] = 3
    target_df.loc[(target_df.kill > 30) & (target_df.kill <= 50), 'kill'] = 2
    target_df.loc[(target_df.kill > 20) & (target_df.kill <= 30), 'kill'] = 1
    target_df.loc[(target_df.kill > 6) & (target_df.kill <= 20), 'kill'] = 0
    # death
    target_df.loc[(target_df.death > 90), 'death'] = 0
    target_df.loc[(target_df.death > 70) & (target_df.death <= 90), 'death'] = 1
    target_df.loc[(target_df.death > 60) & (target_df.death <= 70), 'death'] = 2
    target_df.loc[(target_df.death > 50) & (target_df.death <= 60), 'death'] = 3
    target_df.loc[(target_df.death > 40) & (target_df.death <= 50), 'death'] = 4
    target_df.loc[(target_df.death > 6) & (target_df.death <= 40), 'death'] = 5
    # assist
    target_df.loc[(target_df.assist > 200), 'assist'] = 5
    target_df.loc[(target_df.assist > 150) & (target_df.assist <= 200), 'assist'] = 4
    target_df.loc[(target_df.assist > 100) & (target_df.assist <= 150), 'assist'] = 3
    target_df.loc[(target_df.assist > 70) & (target_df.assist <= 100), 'assist'] = 2
    target_df.loc[(target_df.assist > 50) & (target_df.assist <= 70), 'assist'] = 1
    target_df.loc[(target_df.assist > 6) & (target_df.assist <= 50), 'assist'] = 0
    # gold
    target_df.loc[(target_df.gold > 150000), 'gold'] = 5
    target_df.loc[(target_df.gold > 130000) & (target_df.gold <= 150000), 'gold'] = 4
    target_df.loc[(target_df.gold > 110000) & (target_df.gold <= 130000), 'gold'] = 3
    target_df.loc[(target_df.gold > 90000) & (target_df.gold <= 110000), 'gold'] = 2
    target_df.loc[(target_df.gold > 70000) & (target_df.gold <= 90000), 'gold'] = 1
    target_df.loc[(target_df.gold > 6) & (target_df.gold <= 70000), 'gold'] = 0

    df_list = target_df.values.tolist()
    df_list = df_list[0]
    l_stats = df_list[1:]
    l_name = df_list[0]

    categories = ['damage', 'kill', 'death', 'assist', 'gold']
    categories = [*categories, categories[0]]

    l_stats = [*l_stats, l_stats[0]]

    fig = go.Figure(
        data=[
            go.Scatterpolar(r=l_stats, theta=categories, fill='toself', name=l_name)
        ],
        layout=go.Layout(
            title=go.layout.Title(text='Radar stats'),
            polar={'radialaxis': {'visible': True}},
            showlegend=True
        )
    )

    pyo.plot(fig)


if __name__ == '__main__':
    connection = get_sql_connection()
    # df_top5 = get_top5champion(connection)
    # vis_topchampion(df_top5)

    # df_kda = get_kda(connection)
    # vis_kda(df_kda)


    df_radar = radarvis(connection)
    print(vis_radar(df_radar, 'yogurtQAQ'))
