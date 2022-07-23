SELECT ps.ID AS ctitle, ps.score AS pscore
FROM player_score AS ps
         JOIN (SELECT competition_id, MAX(row_num) AS newest
               FROM player_score
               WHERE player_id = ?
                 AND tenant_id = ?
               GROUP BY competition_id) AS ps2 ON ps.competition_id = ps2.competition_id AND ps.row_num = newest
         LEFT JOIN competition AS c ON c.id = ps.competition_id
WHERE ps.tenant_id = ?
  AND ps.player_id = ?