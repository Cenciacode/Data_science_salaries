# What is the most common job title among entry-level data analysts in the dataset?
SELECT `Job Title`, COUNT(*) AS count
FROM data_science_salaries
GROUP BY `Job Title`
ORDER BY count DESC
LIMIT 3;

# How does the distribution of employment types vary among data analyst positions?
SELECT `Employment Type`, COUNT(*) AS count
FROM data_science_salaries
GROUP BY `Employment Type`;

# What is the average salary for entry-level data science across all experience levels?
SELECT `Experience Level`, AVG(Salary) AS average_salary
FROM data_science_salaries
WHERE `Experience Level` = 'Entry';

# Can you provide a breakdown of salaries by experience level?
SELECT `Experience Level`, AVG(salary) AS average_salary
FROM data_science_salaries
GROUP BY `Experience Level`;


# Which currency is most commonly used for salaries in this dataset, and what's the distribution of different currencies?
SELECT `Salary Currency`, COUNT(*) AS count
FROM data_science_salaries
GROUP BY `Salary Currency`
ORDER BY count DESC;


# What are the top five company locations where entry-level data science positions are most prevalent?

SELECT `Company Location`, COUNT(*) AS count
FROM data_science_salaries
WHERE `Experience Level` = 'Entry'
GROUP BY `Company Location`
ORDER BY count DESC
LIMIT 5;

# Is there any noticeable difference in average salaries for entry data science when
converted to USD across different company locations?

SELECT `Company Location`, AVG(`Salary in USD`) AS avg_salary_usd
FROM data_science_salaries
WHERE `Experience Level` = 'Entry'
GROUP BY `Company Location`
limit 3;


# Can you identify any correlation between the size of the company and the salaries offered to entry-level data science roles?
SELECT `Company Size`, AVG(Salary) AS avg_salary
FROM data_science_salaries
WHERE `Experience Level` = 'Entry'
GROUP BY `Company Size`;

# How has the average salary for entry-level data science role changed over the years? Are there any noticeable trends?

SELECT year, AVG(salary) AS avg_salary
FROM data_science_salaries
WHERE `Experience Level` = 'Entry'
GROUP BY year
ORDER BY year;






















