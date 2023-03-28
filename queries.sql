-- Part 1: Test it with SQL
-- SELECT * from job;
-- Part 2: Test it with SQL
SELECT name from employer WHERE location = "St. Louis City";
-- Part 3: Test it with SQL
DROP TABLE job;
-- Part 4: Test it with SQL
SELECT name from skills WHERE id IN (SELECT skills_id FROM job_skills) ORDER BY name;

SELECT * FROM skill
LEFT JOIN job_skills ON (skill.id = job_skills.skills_id)
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY name ASC;