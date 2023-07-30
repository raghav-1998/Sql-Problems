SELECT ROUND(s.lat_n, 4) FROM station s 
WHERE ( 
    SELECT COUNT(lat_n) FROM station 
    WHERE s.lat_n > lat_n 
    ) = ( SELECT COUNT(lat_n) FROM station 
          WHERE s.lat_n < lat_n 
);