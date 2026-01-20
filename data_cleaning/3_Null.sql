SELECT * FROM layoffs_staging2
WHERE total_laid_off = 'NULL' AND percentage_laid_off = 'NULL' 


SELECT * FROM layoffs_staging2
WHERE total_laid_off = 'NULL' AND percentage_laid_off = 'NULL' AND industry = 'NULL'


SELECT * FROM layoffs_staging2
WHERE industry IS NULL

SELECT * FROM layoffs_staging2
WHERE company = 'Airbnb'

SELECT DISTINCT industry
FROM layoffs_staging2

SELECT 
    t1.company,
    t1.industry,
    t2.industry
FROM layoffs_staging2 t1
INNER JOIN layoffs_staging2 t2
ON t1.company = t2.company
WHERE t1.industry IS NULL AND t2.industry IS NOT NULL;


UPDATE layoffs_staging2 t1
SET industry = t2.industry
FROM layoffs_staging2 t2
WHERE 
    t1.company = t2.company
    AND t1.industry IS NULL 
    AND t2.industry IS NOT NULL


SELECT * FROM layoffs_staging2
WHERE company LIKE  'Bally%'

