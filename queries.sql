-- Query #1
SELECT email, urole FROM users;

-- Query #2
SELECT files.fpath, workshops.wdate FROM files
INNER JOIN workshops ON files.workshop_id = workshops.id
INNER JOIN users ON workshops.user_id = users.id
WHERE users.email = 'example@example.com'
ORDER BY workshops.wdate ASC;

-- Query #3
SELECT workshops.id, workshops.wdate, workshops.wlocation FROM workshops
INNER JOIN participations ON workshops.id = participations.workshop_id
INNER JOIN users ON participations.user_id = users.id
WHERE users.email = 'example@example.com';

-- Query #4
SELECT workshops.id, workshops.wdate, workshops.wlocation, COUNT(participations.id) AS participant_count FROM workshops
INNER JOIN users ON workshops.user_id = users.id
LEFT JOIN participations ON workshops.id = participations.workshop_id
GROUP BY workshops.id, workshops.wdate, workshops.wlocation
ORDER BY participant_count DESC, workshops.wdate ASC;

-- Query #5
SELECT AVG(participant_count) AS avg_participants FROM (
    SELECT COUNT(participations.id) AS participant_count FROM workshops
    INNER JOIN users ON workshops.user_id = users.id
    LEFT JOIN participations ON workshops.id = participations.workshop_id
    WHERE users.email = 'example@example.com' AND workshops.wdate < UNIX_TIMESTAMP()
    GROUP BY workshops.id
) AS past_workshops;
