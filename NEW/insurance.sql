-- use xavier

-- SHOW tables

-- SELECT * FROM insurance


-- Show records of 'male' patient from 'southwest' region.
-- SELECT * FROM insurance WHERE gender='male' AND region='northwest'




-- Show all records having bmi in range 30 to 45 both inclusive.


-- SELECT * FROM insurance WHERE bmi BETWEEN 30 and 45






-- Show minimum and maximum bloodpressure of diabetic patient who smokes. Make column names as MinBP and MaxBP respectively.

-- SELECT min(bloodpressure) as 'Minbp' ,max(bloodpressure) as 'Maxbp' FROM insurance WHERE diabetic='yes' and smoker='yes'



-- Find no of unique patients who are not from southwest region.

-- SELECT count(DISTINCT(patientID)) as 'total' FROM insurance WHERE region!='southwest'



-- Total claim amount from male smoker.


-- SELECT sum(claim) as 'total claim' from insurance WHERE gender='male' AND smoker='yes'




-- Select all records of south region.

-- SELECT * FROM insurance WHERE region IN ('southwest','southeast')



-- No of patient having normal blood pressure. Normal range[90-120]


-- SELECT * FROM insurance WHERE bloodpressure BETWEEN 90 AND 120



-- What is the average claim amount for non-smoking female patients who are diabetic?


-- SELECT AVG(claim) as 'avg_claim' FROM insurance WHERE gender='female' AND smoker='no' AND diabetic='yes'


-- Write a SQL query to update the claim amount for the patient with PatientID = 1234 to 5000.


-- UPDATE insurance SET claim=80000 WHERE PatientID BETWEEN  1234 and 5000

-- SELECT claim FROM insurance WHERE PatientID BETWEEN 1234 AND 5000



-- Write a SQL query to delete all records for patients who are smokers and have no children.


-- delete from insurance WHERE smoker='yes' AND children=0


-- No of pateint belo 17 years of age having normal blood pressure as per below formula -
-- BP normal range = 80+(age in years × 2) to 100 + (age in years × 2)

-- Note: Formula taken just for practice, don't take in real sense.


-- SELECT age FROM insurance


SELECT count(PatientID) as "count" FROM insurance WHERE age<17 AND bloodpressure BETWEEN (80 +age*2) AND (100+age*2)