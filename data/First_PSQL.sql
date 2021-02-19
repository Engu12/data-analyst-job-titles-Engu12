--Select Count (*) FROM data_analyst_jobs;

/*1 -SELECT Company FROM data_analyst_jobs
limit 10;*/

/*2-SELECT COUNT(*) FROM data_analyst_jobs
Where Location = 'TN'; */

/*3- SELECT COUNT(*) FROM data_analyst_jobs
Where Location = 'TN' OR Location = 'KY'*/

/*4SELECT COUNT(*) FROM data_analyst_jobs
WHERE Location ='TN' AND star_rating > 4;*/

/*5 SELECT COUNT(*) FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;*/

SELECT LOCATION AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
ORDER BY avg_rating DESC;



