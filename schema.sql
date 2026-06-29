
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


CREATE TABLE team_statistics (
    game_id INTEGER,
    game_datetime TEXT,
    team_id INTEGER,
    team_name TEXT,
    opponent_team_id INTEGER,
    opponent_team_name TEXT,
    is_home INTEGER,
    win INTEGER,
    team_score INTEGER,
    opponent_score INTEGER,
    
    assists INTEGER,
    blocks INTEGER,
    steals INTEGER,
    
    fg_attempted INTEGER,
    fg_made INTEGER,
    fg_percentage REAL,
    
    three_pt_attempted INTEGER,
    three_pt_made INTEGER,
    three_pt_percentage REAL,
    
    ft_attempted INTEGER,
    ft_made INTEGER,
    ft_percentage REAL,
    
    rebounds_defensive INTEGER,
    rebounds_offensive INTEGER,
    rebounds_total INTEGER,
    
    turnovers INTEGER,
    plus_minus INTEGER,
    minutes_played REAL,
    
    q1_points INTEGER,
    q2_points INTEGER,
    q3_points INTEGER,
    q4_points INTEGER,
    
    bench_points INTEGER,
    biggest_lead INTEGER,
    lead_changes INTEGER,
    
    points_fast_break INTEGER,
    points_turnovers INTEGER,
    points_paint INTEGER,
    
    season_wins INTEGER,
    season_losses INTEGER,
    
    game_type TEXT,
    game_date TEXT
);

add schema
