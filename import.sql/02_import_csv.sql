COPY layoffs_raw
FROM 'C:\Users\Tuyet Nhi\OneDrive\Documents\SQL_Project\SQL_Data_Cleaning_Project\import.sql\cvs_file\layoffs.csv'
DELIMITER ','
CSV HEADER;


SELECT *
FROM layoffs_raw