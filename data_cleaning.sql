-- DATA CLEANING SQL
USE world_layoffs;

CREATE TABLE layoffs_staging LIKE layoffs;
INSERT INTO layoffs_staging SELECT * FROM layoffs;

CREATE TABLE layoffs_cleaned AS
SELECT *
FROM (
    SELECT *,
    ROW_NUMBER() OVER (
        PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, date, stage, country, funds_raised_millions
    ) AS row_num
    FROM layoffs_staging
) t
WHERE row_num = 1;

UPDATE layoffs_cleaned
SET company = TRIM(company),
    location = TRIM(location),
    industry = TRIM(industry),
    country = TRIM(country);

UPDATE layoffs_cleaned
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%';

UPDATE layoffs_cleaned
SET country = 'United States'
WHERE country LIKE 'United States%';

UPDATE layoffs_cleaned
SET date = STR_TO_DATE(date, '%m/%d/%Y');

ALTER TABLE layoffs_cleaned MODIFY COLUMN date DATE;

UPDATE layoffs_cleaned
SET industry = NULL
WHERE industry = '';

ALTER TABLE layoffs_cleaned DROP COLUMN row_num;
