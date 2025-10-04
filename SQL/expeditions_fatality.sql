 WITH stats AS (
        SELECT 
            TRIM(e.nation) AS nation,
            SUM(e.totmembers + e.tothired) AS attempts,
            SUM(e.mdeaths + e.hdeaths) AS deaths
        FROM himalayan_expeditions.expeditions e
        WHERE e.peakid IN ({codes})
        GROUP BY TRIM(e.nation)
    )
    SELECT 
        nation,
        attempts,
        deaths,
        ROUND((deaths / NULLIF(attempts,0)) * 100, 2) AS fatality_pct
    FROM stats
    WHERE nation IS NOT NULL AND TRIM(nation) <> ''
      AND attempts >= :min_attempts
    ORDER BY fatality_pct DESC, deaths DESC
    LIMIT :topn;
