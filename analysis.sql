-- ANALYSIS SQL

SELECT company, SUM(total_laid_off) AS total
FROM layoffs_cleaned
GROUP BY company
ORDER BY total DESC
LIMIT 10;

SELECT YEAR(date) AS year, SUM(total_laid_off)
FROM layoffs_cleaned
GROUP BY year
ORDER BY year;

SELECT industry, SUM(total_laid_off)
FROM layoffs_cleaned
GROUP BY industry
ORDER BY SUM(total_laid_off) DESC;
