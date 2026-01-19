CREATE TABLE layoffs_staging
(LIKE layoffs_raw INCLUDING ALL);


SELECT * FROM layoffs_staging;

INSERT INTO layoffs_staging
SELECT * FROM layoffs_raw;

SELECT * FROM layoffs_staging;
