-- 1 . How many rows are in the data_analyst_jobs table? 

   /*	
	SELECT count(*)
	FROM data_analyst_jobs
 
   */
   
 --   Answer   1793

--2 . Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?

  /*
	SELECT company
	FROM data_analyst_jobs 
	LIMIT 10

  */
    
 --    Answer   ExxonMobil

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

