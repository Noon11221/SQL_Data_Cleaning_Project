--Column company
UPDATE layoffs_staging2
SET company = TRIM(company);

SELECT * FROM layoffs_staging2
LIMIT 100


SELECT DISTINCT company FROM layoffs_staging2
WHERE company LIKE '%.%'

SELECT DISTINCT company FROM layoffs_staging2
WHERE company LIKE '%/%'

--industry
--1
UPDATE layoffs_staging2
SET industry = 'Crypto'
WHERE industry IN ('Crypto Currency','CryptoCurrency')
--2
UPDATE layoffs_staging2
SET industry = 'Crypto'
WHERE industry LIKE  'Crypto%'

--Country
UPDATE layoffs_staging2
SET country = TRIM(TRAILING '.' FROM country)
WHERE country LIKE 'United States%'

--date

UPDATE layoffs_staging2
SET date = TO_DATE(date, 'MM/DD/YYYY')
WHERE date NOT LIKE 'NULL'

UPDATE layoffs_staging2
SET date = NULL
WHERE date = 'NULL';

ALTER TABLE layoffs_staging2
ALTER COLUMN date TYPE DATE
USING date::DATE




SELECT * FROM layoffs_staging2
LIMIT 100

SELECT DISTINCT date FROM layoffs_staging2
ORDER BY 1
LIMIT 

