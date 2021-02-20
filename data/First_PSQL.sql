-- 1 . How many rows are in the data_analyst_jobs table? 

   /*	
	SELECT count(*)
	FROM data_analyst_jobs
 
   */
   
 --   Answer   1793

--2 . Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?

  
	/*SELECT company
	FROM data_analyst_jobs 
	--LIMIT 10
	fetch NTH_Value(company,10); */

  
    
 --    Answer   Exxon Mobil

--3 . How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

    /*
	SELECT COUNT(location)
	FROM data_analyst_jobs
	WHERE location = 'TN' OR location = 'KY'

    */

--  Answer  TN --> 21 , TN+KY --> 27

--4 . How many postings in Tennessee have a star rating above 4?

  /*	
	SELECT COUNT(star_rating)
	FROM data_analyst_jobs
	WHERE location = 'TN' AND star_rating > 4;

  */
-- Answer 3

-- 5 . How many postings in the dataset have a review count between 500 and 1000?

/*SELECT COUNT(review_count)
	FROM data_analyst_jobs
	WHERE review_count BETWEEN 500 AND 1000;
*/

-- Answer 151

-- 6. Show the average star rating for companies in each state. The output should show the state as state and 
-- the average rating for the state as avg_rating. Which state shows the highest average rating?
 
/*	SELECT location AS state ,ROUND(AVG(star_rating),2) AS avg_rating
	FROM data_analyst_jobs
	WHERE star_rating IS NOT NULL
	GROUP BY location
	ORDER BY avg_rating DESC
	--limit 1;
	fetch first 1 row only 
	*/

--Answer NE with avg_rating 4.2 

--7 . Select unique job titles from the data_analyst_jobs table. How many are there?

  
/*	SELECT COUNT(DISTINCT(title))
	FROM data_analyst_jobs;
 */
--    Answer  881

--8  How many unique job titles are there for California companies?

	
/*	SELECT COUNT(DISTINCT(title))
	FROM data_analyst_jobs
	WHERE location = 'CA'
*/
--    Answer  230

--9 Find the name of each company and its average star rating for all companies that have more than 5000 
--reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

  /*  SELECT DISTINCT company
      From data_analyst_jobs
      where review_count >5000 AND company IS NOT NULL
	
--and 9 a  Name of Companies with all the criterias mention there .
 /*SELECT COUNT(DISTINCT company)
    From data_analyst_jobs
    where review_count >5000 AND company IS NOT NULL */
 
 --ANS 9 b )40 
	
--10  Add the code to order the query in #9 from highest to lowest average star rating. Which company 
--    with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

   
/*SELECT DISTINCT company,ROUND(star_rating,1)as star_rating 
    From data_analyst_jobs
    where review_count >5000
    order by star_rating desc*/
	
--Answer top 6 companies having star_rating  4.2


--11 . Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?

 /*   SELECT COUNT(title)
	FROM data_analyst_jobs
	WHERE lower(title) LIKE '%analyst%';	
*/
--Answer because  of the LIKE function (wildCard or Reg Expression we user lower())

--12 .How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? 
--    What word do these positions have in common?

/*SELECT COUNT(DISTINCT title)
	FROM data_analyst_jobs
	WHERE lower (title) NOT LIKE '%analyst%' AND lower(title) NOT ILIKE '%analytics%'
*/
--Answer 4

/*
  BONUS Qa.You want to understand which jobs requiring SQL are hard to fill. Find the number 
          of jobs by industry (domain)that require SQL and have been posted longer than 3 weeks.
      Qb. Disregard any postings where the domain is NULL.
      Qc. Order your results so that the domain with the greatest number of hard to fill jobs is at the top.
      Qd. Which three industries are in the top 4 on this list? How many jobs have been listed for more than 3 weeks for each of the top 4?
*/	  
	
	
 	 SELECT domain, COUNT(title) AS num_jobs
	 FROM data_analyst_jobs
	 WHERE skill ILIKE '%SQL%' AND days_since_posting >= 21  AND domain IS NOT NULL
	 GROUP BY domain
	 ORDER BY num_jobs DESC
	 Limit 3;



	