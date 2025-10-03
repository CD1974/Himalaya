 SELECT
            m.myear AS year,
            CASE WHEN m.sex='M' THEN 'Hombres'
                 WHEN m.sex='F' THEN 'Mujeres'
                 ELSE 'Desconocido' END AS sexo,
            COUNT(*) AS intentos,
            SUM(
                CASE
                  WHEN m.msmtdate1 IS NOT NULL AND TRIM(m.msmtdate1) <> ''
                  THEN 1 ELSE 0
                END
            ) AS exitos
        FROM himalayan_expeditions.members m
        WHERE m.myear BETWEEN :ymin AND :ymax
          AND m.sex IN ('M','F')
          {peak_filter}
        GROUP BY m.myear, sexo
        HAVING year IS NOT NULL
        ORDER BY year;
