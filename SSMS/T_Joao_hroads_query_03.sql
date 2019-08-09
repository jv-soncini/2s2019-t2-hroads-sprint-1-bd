use SENAI_HROADS_TARDE


--selecionar todos personagens
select * from Personagem

--selecionar todas Classes
select * from Classes

--selecionar só o nome das classes
select Nome from Classes

--selecionar todas habilidades
select * from Habilidades

--fazer a contagem de quantas habilidades foram cadastradas
select count(Nome) from Habilidades 

--Selecionar somente os id’s das habilidades classificando-os por ordem crescente
select IdHabilidades from Habilidades order by IdHabilidades asc

--selecionar todos tipos de habilidade
select * from TipoDeHabilidade


