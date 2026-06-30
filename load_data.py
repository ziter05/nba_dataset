
import sqlite3
import pandas as pd

# połączenie z bazą
conn = sqlite3.connect("database.db")

# wczytanie CSV
games = pd.read_csv("data/Games.csv")
players = pd.read_csv("data/Players.csv")
player_stats = pd.read_csv("data/player_statistic_small.csv")
team_stats = pd.read_csv("data/team_statistic_small.csv")

# zapis do bazy

games.to_sql("games", conn, if_exists="replace", index=False)
players.to_sql("players", conn, if_exists="replace", index=False)
player_stats.to_sql("player_statistics", conn, if_exists="replace", index=False)
team_stats.to_sql("team_statistics", conn, if_exists="replace", index=False)

print("✅ Data loaded!")

conn.close()
