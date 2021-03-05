SELECT a.id, a.name, a.day, a.chapter, count(r.*) as total_requests
FROM assistance_requests r
JOIN assignments a ON a.id = r.assignment_id
GROUP BY a.id
ORDER BY total_requests DESC;