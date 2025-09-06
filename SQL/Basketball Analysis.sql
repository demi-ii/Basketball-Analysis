CREATE DATABASE Basketball;
USE Basketball;
SELECT * FROM all_seasons;
SELECT COUNT(*) FROM all_seasons;

 ##player performance 
 ##Average points (pts) by age group.
SELECT ROUND(AVG(pts),2) AS avg_pts,
CASE 
	WHEN age BETWEEN 0 AND 19 THEN '0-19'
	WHEN age BETWEEN 20 AND 24 THEN '20-24'
	WHEN age BETWEEN 25 AND 29 THEN '25-29'
	WHEN age BETWEEN 30 AND 34 THEN '30-34'
	WHEN age BETWEEN 35 AND 39 THEN '35-39'
    ELSE '40+'
END AS age_group
FROM all_seasons
GROUP BY age_group
ORDER BY avg_pts DESC;

###Compare usg_pct and ts_pct for different age ranges.
SELECT ROUND(AVG(usg_pct),2) AS avg_usg_pct,ROUND(AVG(ts_pct),2) AS avg_ts_pct,
CASE 
	WHEN age BETWEEN 0 AND 19 THEN '0-19'
	WHEN age BETWEEN 20 AND 24 THEN '20-24'
	WHEN age BETWEEN 25 AND 29 THEN '25-29'
	WHEN age BETWEEN 30 AND 34 THEN '30-34'
	WHEN age BETWEEN 35 AND 39 THEN '35-39'
    ELSE '40+'
END AS age_group
FROM all_seasons
GROUP BY age_group
ORDER BY avg_usg_pct DESC;

 ##player height vs rebounds, What impact does height have on basketball 
 SELECT 
CASE
	WHEN player_height BETWEEN 0 AND 149 THEN '<150CM'
    WHEN player_height BETWEEN 150 AND 199 THEN '150cm-199cm'
    WHEN player_height BETWEEN 200 AND 249 THEN '200cm-249cm'
    ELSE '>250cm'
END AS height_group,
ROUND(AVG(reb),2) AS avg_rebounds,
COUNT(*) AS Num_players
FROM all_seasons
GROUP BY height_group
ORDER BY height_group;

##player height and pts
SELECT COUNT(*),
CASE
	WHEN player_height BETWEEN 0 AND 149 THEN '<150CM'
    WHEN player_height BETWEEN 150 AND 199 THEN '150cm-199cm'
    WHEN player_height BETWEEN 200 AND 249 THEN '200cm-249cm'
    ELSE '250+cm'
END AS height_group,
ROUND(AVG(pts),2) AS avg_pts
FROM all_seasons
GROUP BY height_group
ORDER BY avg_pts DESC;

##player height and ast 
SELECT COUNT(*),
CASE
	WHEN player_height BETWEEN 0 AND 149 THEN '<150CM'
    WHEN player_height BETWEEN 150 AND 199 THEN '150cm-199cm'
    WHEN player_height BETWEEN 200 AND 249 THEN '200cm-249cm'
    ELSE '250+cm'
END AS height_group,
ROUND(AVG(ast),2) AS avg_ast
FROM all_seasons
GROUP BY height_group
ORDER BY avg_ast DESC;


##Team Analysis
##Count of players per team
SELECT team_abbreviation, COUNT(*) AS total_players
FROM all_seasons
GROUP BY team_abbreviation
ORDER BY total_players DESC;

## overall stats
##Which season had the highest scoring players?
SELECT ROUND(AVG(pts),2) AS avg_pts, season
FROM all_seasons
GROUP BY season
ORDER BY avg_pts DESC;

##Country & Global Insights
##Number of players per country.
SELECT COUNT(*) AS Num_players, country
FROM all_seasons
GROUP BY country
ORDER BY Num_players DESC;

##Top 5 countries with highest average pts or net_rating.
SELECT country, ROUND(AVG(net_rating),2) AS avg_net_rating
FROM all_seasons
GROUP BY country 
ORDER BY avg_net_rating
 DESC LIMIT 5;
 
 
 
