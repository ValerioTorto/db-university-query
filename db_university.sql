-- QUERY:
-- Selezionare cognome e nome tutti gli insegnanti, ordinati per cognome e poi per nome in ordine alfabetico (100)
select name, surname
from teachers t 
order by surname, name

-- Selezionare tutti gli insegnamenti (courses) che valgono almeno 12 crediti (cfu) (375)
select name, cfu
from courses c 
where cfu >= 12;

-- Selezionare tutti gli studenti nati nel 1990 (160)
select name, surname, date_of_birth
from students s 
where date_of_birth >= '1990-01-01' and date_of_birth <= '1990-12-31';

-- Selezionare tutti i corsi del primo semestre del primoanno di un qualsiasi corso di laurea (286)
select period, name, `year`
from courses c 
where period = 'I semestre' and `year` = '1';
-- Da quanti dipartimenti è composta l’università?
select name 
from departments d 

-- Contare tutti gli insegnanti il cui cognome termina con la “E” (8)
select surname
from teachers t 
where surname like '%E';

-- Selezionare nome, cognome e codice fiscale di tutti gli studenti iscritti al Corso di Laurea in Economia, in ordine alfabetico
select s.name, s.surname, s.fiscal_code, d.name
from students s 
join `degrees` d on s.degree_id  = d.id 
where d.name = 'Corso di Laurea in Economia'
order by s.name ASC;


-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
select d.name
from `degrees` d
join departments d2 on d.department_id  = d2.id 
where d.`level` = 'magistrale' and d.department_id = 7;