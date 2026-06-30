Select 
p.firstName, p.lastName, s.points, t.teamScore,t.win
from player_statistics s
join players p
on s.personId = p.personId
join team_statistics t
on s.gameId = t.gameId
and s.playerteamId = t.teamId
order by s.points desc,t.teamScore desc
limit 10;

/*top 10 avg_points per player with avg_win*/
select p.firstName, p.lastName,t.teamName, round(AVG(s.points), 1) as avg_points,
round(avg(t.win),3) as avg_win
from player_statistics s
join players p
on s.personId = p.personId
join team_statistics t
on s.gameId = t.gameId
and s.playerteamId = t.teamId
group by p.personId,t.teamName
order by avg_points desc limit 10;


/*top 10 avg_points per player with avg_win > 0.5 
and games_played >20*/

select p.firstName, p.lastName, round(avg(s.points),1) as avg_points,
round(avg(t.win),3) as avg_win, count(distinct s.gameId) as games_played
from player_statistics s
join players p
on s.personId = p.personId
join team_statistics t
on s.gameId = t.gameId
and s.playerteamId = t.teamId
group by p.personId
having avg(t.win) > 0.5
and count(distinct s.gameId) >20
order by avg_points desc limit 10
;


