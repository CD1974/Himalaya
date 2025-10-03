SELECT TRIM(nation) AS nation, COUNT(*) AS n_expeditions
    FROM himalayan_expeditions.expeditions
    WHERE nation IS NOT NULL
      AND TRIM(nation) <> ''
      AND UPPER(TRIM(nation)) <> 'UNKNOWN'
    GROUP BY TRIM(nation)
    ORDER BY n_expeditions DESC
    LIMIT 50;
