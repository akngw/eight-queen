MATCH (q:Queen) DETACH DELETE q

WITH count(*) AS dummy

WITH 8 as max, 1 as rank
UNWIND range(1,max) AS f
CREATE (q:Queen {file:f, rank:rank})

WITH count(*) AS dummy

WITH 8 as max, 2 as rank
MATCH (q1:Queen)
UNWIND range(1,max) AS f
WITH q1, f, max, rank
WHERE NOT (f = q1.file)
AND NOT (abs(q1.file - f) = abs(q1.rank - rank))
CREATE (q1)-[:next]->(q:Queen {rank:rank, file: f})

WITH count(*) AS dummy

WITH 8 as max, 3 as rank
MATCH (q1:Queen)-[]->(q2:Queen)
UNWIND range(1,max) AS f
WITH q1, q2, f, max, rank
WHERE NOT (f in [q1.file, q2.file])
AND NOT (abs(q1.file - f) = abs(q1.rank - rank))
AND NOT (abs(q2.file - f) = abs(q2.rank - rank))
CREATE (q2)-[:next]->(q:Queen {rank:rank, file: f})

WITH count(*) AS dummy

WITH 8 as max, 4 as rank
MATCH (q1:Queen)-[]->(q2:Queen)-[]->(q3:Queen)
UNWIND range(1,max) AS f
WITH q1, q2, q3, f, max, rank
WHERE NOT (f in [q1.file, q2.file, q3.file])
AND NOT (abs(q1.file - f) = abs(q1.rank - rank))
AND NOT (abs(q2.file - f) = abs(q2.rank - rank))
AND NOT (abs(q3.file - f) = abs(q3.rank - rank))
CREATE (q3)-[:next]->(q:Queen {rank:rank, file: f})

WITH count(*) AS dummy

WITH 8 as max, 5 as rank
MATCH (q1:Queen)-[]->(q2:Queen)-[]->(q3:Queen)-[]->(q4:Queen)
UNWIND range(1,max) AS f
WITH q1, q2, q3, q4, f, max, rank
WHERE NOT (f in [q1.file, q2.file, q3.file, q4.file])
AND NOT (abs(q1.file - f) = abs(q1.rank - rank))
AND NOT (abs(q2.file - f) = abs(q2.rank - rank))
AND NOT (abs(q3.file - f) = abs(q3.rank - rank))
AND NOT (abs(q4.file - f) = abs(q4.rank - rank))
CREATE (q4)-[:next]->(q:Queen {rank:rank, file: f})

WITH count(*) AS dummy

WITH 8 as max, 6 as rank
MATCH (q1:Queen)-[]->(q2:Queen)-[]->(q3:Queen)-[]->(q4:Queen)-[]->(q5:Queen)
UNWIND range(1,max) AS f
WITH q1, q2, q3, q4, q5, f, max, rank
WHERE NOT (f in [q1.file, q2.file, q3.file, q4.file, q5.file])
AND NOT (abs(q1.file - f) = abs(q1.rank - rank))
AND NOT (abs(q2.file - f) = abs(q2.rank - rank))
AND NOT (abs(q3.file - f) = abs(q3.rank - rank))
AND NOT (abs(q4.file - f) = abs(q4.rank - rank))
AND NOT (abs(q5.file - f) = abs(q5.rank - rank))
CREATE (q5)-[:next]->(q:Queen {rank:rank, file: f})

WITH count(*) AS dummy

WITH 8 as max, 7 as rank
MATCH (q1:Queen)-[]->(q2:Queen)-[]->(q3:Queen)-[]->(q4:Queen)-[]->(q5:Queen)-[]->(q6:Queen)
UNWIND range(1,max) AS f
WITH q1, q2, q3, q4, q5, q6, f, max, rank
WHERE NOT (f in [q1.file, q2.file, q3.file, q4.file, q5.file, q6.file])
AND NOT (abs(q1.file - f) = abs(q1.rank - rank))
AND NOT (abs(q2.file - f) = abs(q2.rank - rank))
AND NOT (abs(q3.file - f) = abs(q3.rank - rank))
AND NOT (abs(q4.file - f) = abs(q4.rank - rank))
AND NOT (abs(q5.file - f) = abs(q5.rank - rank))
AND NOT (abs(q6.file - f) = abs(q6.rank - rank))
CREATE (q6)-[:next]->(q:Queen {rank:rank, file: f})

WITH count(*) AS dummy

WITH 8 as max, 8 as rank
MATCH (q1:Queen)-[]->(q2:Queen)-[]->(q3:Queen)-[]->(q4:Queen)-[]->(q5:Queen)-[]->(q6:Queen)-[]->(q7:Queen)
UNWIND range(1,max) AS f
WITH q1, q2, q3, q4, q5, q6, q7, f, max, rank
WHERE NOT (f in [q1.file, q2.file, q3.file, q4.file, q5.file, q6.file, q7.file])
AND NOT (abs(q1.file - f) = abs(q1.rank - rank))
AND NOT (abs(q2.file - f) = abs(q2.rank - rank))
AND NOT (abs(q3.file - f) = abs(q3.rank - rank))
AND NOT (abs(q4.file - f) = abs(q4.rank - rank))
AND NOT (abs(q5.file - f) = abs(q5.rank - rank))
AND NOT (abs(q6.file - f) = abs(q6.rank - rank))
AND NOT (abs(q7.file - f) = abs(q7.rank - rank))
CREATE (q7)-[:next]->(q:Queen {rank:rank, file: f})

WITH count(*) AS dummy

MATCH (q1:Queen)-[]->(q2:Queen)-[]->(q3:Queen)-[]->(q4:Queen)-[]->(q5:Queen)-[]->(q6:Queen)-[]->(q7:Queen)-[]->(q8:Queen)
RETURN q1.file, q2.file, q3.file, q4.file, q5.file, q6.file, q7.file, q8.file
