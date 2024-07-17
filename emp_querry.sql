select * from company

	
---1)salary values from a table named company where the salary matches the pattern [1-2][1-8](0|7|4).[0-9]{5}

	select salary :: varchar from company where salary :: varchar ~ '[1-2][1-8](0|7|4).[0-9]{5}'

	
--2) annual_bonus values from a table named company where the annual_bonus matches the pattern [1-2][1-7](6|5|4|1).[0-1][0-4]{3}

	
select annual_bonus::varchar from company where annual_bonus ::varchar ~ '[1-2][1-7](6|5|4|1).[0-1][0-4]{3}'
	
--3) query to select company names from the company table that start with a letter from 'G' to 'P' and are followed by 'l' or 'e', case-insensitively
	
select company from company where company ~* '^[G-P](l|e)'

---- 4) select departments from the company table where the department name contains the substring 'e' following any letter between 'D' and 'S'

select department from company where department ~* '[D-S](e)'

	
---5) select ages from the company table where the age, displayed as text, matches the pattern '4-5'.
	
select age :: varchar from company where age :: varchar ~ '[4-5](5|6)'

select * from dataset
.
----6) select the department and recruitment_channel  columns from the dataset table where the recruitment_channel contains the string related 'SO..'

select department, recruitment_channel from dataset where recruitment_channel ~* '[s-s](o)'

----7)select the department and avg_training_score columns from the dataset table, where the avg_training_score matches the pattern of starting with either '6' or '7' and followed by '2' or '4'.

select department, avg_training_score :: varchar from dataset where avg_training_score :: varchar ~ 
	'[6-7](2|4)'
	
---8) select the department column from the dataset table where the department contains the substring 'Hr' in a case-insensitive manner.

	
	select department from dataset where department ~* '[H-H](r)'

select * from performance

	
-----9)select the name and department columns from the performance table where the department contains the string 'Engineering'.
	
	
	select name,department from performance where department ~ '[E-E](n)'

	
---10)select performancescore from the performance table as a varchar, where performancescore starts with either '0' or '1'.

	select performancescore :: varchar from performance where performancescore :: varchar ~ '^[0-1]'








