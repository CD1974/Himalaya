SELECT
    TRIM(e.nation)                       AS nation,
    {metrica_sql}                        AS value,
    MIN(e.year)                          AS year_min,
    MAX(e.year)                          AS year_max
FROM himalayan_expeditions.expeditions e
JOIN himalayan_expeditions.peaks p ON p.peakid = e.peakid
WHERE p.pkname <> '[placeholder]'
    AND e.nation IS NOT NULL
    AND TRIM(e.nation) <> ''
    AND UPPER(TRIM(e.nation)) <> 'UNKNOWN'
    AND ({cond})
GROUP BY TRIM(e.nation)
HAVING value > 0
ORDER BY value DESC;
