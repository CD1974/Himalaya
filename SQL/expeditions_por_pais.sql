SELECT host, n_expeditions FROM (
        SELECT TRIM(host) AS host, COUNT(*) AS n_expeditions
        FROM himalayan_expeditions.expeditions
        WHERE host IS NOT NULL
          AND TRIM(host) <> ''
          AND UPPER(TRIM(host)) <> 'UNKNOWN'
        GROUP BY TRIM(host)
    ) t
    ORDER BY n_expeditions DESC;
