SELECT season, COUNT(*) AS n_expeditions
FROM himalayan_expeditions.expeditions
WHERE season IS NOT NULL AND season <> ''
GROUP BY season;
