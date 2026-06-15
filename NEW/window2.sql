-- use xavier

-- SHOW tables

-- SELECT * FROM ipl





-- SELECT * FROM (
-- SELECT BattingTeam,batter,sum(batsman_run) as "total_runs",
-- DENSE_RANK() OVER(PARTITION BY BattingTeam ORDER BY sum(batsman_run) DESC) as " batsman_rank"
-- FROM ipl

-- GROUP BY BattingTeam,batter ) t

-- WHERE t.batsman_rank < 6
-- ORDER BY t.BattingTeam,t.batsman_rank



-- SELECT * FROM ipl
-- WHERE batter='V Kohli'