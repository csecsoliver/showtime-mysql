-- Query #1
SELECT email, urole FROM users;

-- Query #2
SELECT files.fpath AS 'Fájl elérési út' , FROM_UNIXTIME(workshops.wdate) AS 'Kapcsolódó foglalkozás dátuma' FROM files
INNER JOIN workshops ON files.workshop_id = workshops.id
INNER JOIN users ON workshops.user_id = users.id
WHERE users.email = 'nagy.katalin@pelda.hu'
ORDER BY workshops.wdate ASC;

-- Query #3
SELECT participations.pname AS 'Gyermek Neve', FROM_UNIXTIME(workshops.wdate)
AS 'Dátum', workshops.wlocation AS 'Helyszín' FROM workshops
INNER JOIN participations ON workshops.id = participations.workshop_id
INNER JOIN users ON participations.user_id = users.id
WHERE users.email = 'toth.eszter@szulo.hu';

-- Query #4
SELECT FROM_UNIXTIME(workshops.wdate) AS 'Dátum', workshops.wlocation AS 'Helyszín', COUNT(participations.id) AS 'Résztvevők száma' FROM workshops
INNER JOIN users ON workshops.user_id = users.id
LEFT JOIN participations ON workshops.id = participations.workshop_id
GROUP BY workshops.id, workshops.wdate, workshops.wlocation
ORDER BY 'Résztvevők száma' DESC, workshops.wdate ASC;

-- Query #5
SELECT AVG(participant_count) AS "Átlagos résztvevőszám" FROM (
    SELECT COUNT(participations.id) AS participant_count FROM workshops
    INNER JOIN users ON workshops.user_id = users.id
    LEFT JOIN participations ON workshops.id = participations.workshop_id
    WHERE workshops.wdate < UNIX_TIMESTAMP()
    GROUP BY workshops.id
) AS past_workshops;
