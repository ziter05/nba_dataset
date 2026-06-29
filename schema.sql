
CREATE TABLE players (
    player_id INTEGER,
    first_name TEXT,
    last_name TEXT,
    birth_date TEXT,
    school TEXT,
    country TEXT,
    height_inches INTEGER,
    weight_lbs INTEGER,
    jersey TEXT,
    is_guard INTEGER,
    is_forward INTEGER,
    is_center INTEGER,
    draft_year INTEGER,
    draft_round INTEGER,
    draft_number INTEGER,
    from_year INTEGER,
    to_year INTEGER
);


CREATE TABLE games (
    game_id INTEGER,
    game_datetime TEXT,
    home_team_id INTEGER,
    home_team_name TEXT,
    home_team_city TEXT,
    away_team_id INTEGER,
    away_team_name TEXT,
    away_team_city TEXT,
    home_score INTEGER,
    away_score INTEGER,
    winner TEXT,
    game_type TEXT,
    attendance INTEGER,
    arena_name TEXT,
    arena_city TEXT,
    arena_state TEXT
);

