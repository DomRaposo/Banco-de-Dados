select distinct mat
from historico
where cod_disc = 'BD'
and year(ano) = 2015
and nota < 5;

select mat , avg(nota) as media_nota
from historico
where cod_disc = 'POO'
and year (ano) = 2015
group by mat;

select mat, avg(nota) as media_notas
from historico
where cod_disc = 'POO'
and year (ano) = 2015
group by mat
having avg(nota) > 6;

select count(*) as total_alunos_fora_natal
from alunos
where cidade <> 'Natal';

