--Check if there are duplicates
SELECT
    company,
    location,
    industry,
    total_laid_off,
    percentage_laid_off,
    date,
    stage,
    country,
    funds_raised_millions,
    COUNT(*) AS cnt
FROM layoffs_staging
GROUP BY
    company,
    location,
    industry,
    total_laid_off,
    percentage_laid_off,
    date,
    stage,
    country,
    funds_raised_millions
HAVING COUNT(*) > 1;


--Apply ROW_NUMBER and then create layoffs_staging2
SELECT *,
    ROW_NUMBER() OVER(
                    PARTITION BY company,location,industry,total_laid_off,percentage_laid_off,date,stage,country,funds_raised_millions) AS row_num
FROM layoffs_staging


