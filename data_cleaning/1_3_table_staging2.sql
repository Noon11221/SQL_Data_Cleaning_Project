CREATE TABLE IF layoffs_staging2 AS
SELECT
    *,
    ROW_NUMBER() OVER (
        PARTITION BY
            company,
            location,
            industry,
            total_laid_off,
            percentage_laid_off,
            date,
            stage,
            country,
            funds_raised_millions
    ) AS row_num
FROM layoffs_staging;

SELECT * FROM layoffs_staging2
WHERE row_num > 1;

SELECT * FROM layoffs_staging

--Remove Duplicates
DELETE
FROM layoffs_staging2
WHERE row_num > 1;


