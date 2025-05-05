create table tb_alunos (
  id_aluno integer primary key,
  nome text not null,
  idade integer not null
);

create table tb_cursos (
  id_curso integer primary key,
  nome_curso text not null,
  carga_horaria integer not null
);

show tables;

describe tb_alunos;
describe tb_cursos;

insert into tb_alunos values(1, "Vitor", 18);
insert into tb_alunos values(2, "Vitor", 18);
insert into tb_alunos values(3, "Vitor", 18);

select * from tb_alunos;


alter table tb_alunos add column temporario text;

describe tb_alunos;

alter table tb_cursos drop column carga_horaria;

describe tb_cursos;

create table temp (id integer primary key, temp1 text not null);
insert into temp values (1, "Ski");
select id from temp;