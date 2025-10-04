SELECT `year`, COUNT(*) AS n_expeditions
FROM himalayan_expeditions.expeditions
GROUP BY `year`
ORDER BY `year`;
