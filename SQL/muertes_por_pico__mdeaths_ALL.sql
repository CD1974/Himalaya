SELECT 
        p.peakid,
        p.pkname,
        COALESCE(SUM(e.mdeaths),0) AS deaths
    FROM himalayan_expeditions.expeditions e
    JOIN himalayan_expeditions.peaks p ON p.peakid = e.peakid
    WHERE p.pkname <> '[placeholder]'
    GROUP BY p.peakid, p.pkname
    HAVING deaths > 0
    ORDER BY deaths DESC
