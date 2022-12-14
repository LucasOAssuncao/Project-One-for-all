SELECT
    MIN(p.plan_value) AS faturamento_minimo,
    MAX(p.plan_value) AS faturamento_maximo,
    ROUND(AVG(p.plan_value), 2) AS faturamento_medio,
    SUM(p.plan_value) AS faturamento_total
FROM SpotifyClone.person AS pe
JOIN SpotifyClone.plan AS p ON p.plan_id = pe.person_plan_id;