select person_name, person_country, person_dob 
from movies.tb_person 
where person_dod is null
order by person_dob asc
;