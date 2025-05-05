create database cinema;
use cinema;

create table filmes (id_filme int primary key, titulo text not null, duracao interval not null);

create table clientes (id_cliente integer primary key, nome text not null, sexo text not null, idade integer not null);

create table ingressos(id_venda int primary key, valor_pago decimal not null, id_filme int, id_cliente int, FOREIGN KEY (id_filme) REFERENCES filmes(id_filme), FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente));

insert into filmes (id_filme, titulo, duracao) values (1, "Titanic", interval "2 horas");
insert into filmes (id_filme, titulo, duracao) values (2, "Interstellar", interval "4 horas");
insert into filmes (id_filme, titulo, duracao) values (3, "A ilha do medo", interval "3 horas");

insert into clientes (id_cliente, nome, sexo, idade) values (1, "Vitor", "Masculino", 20);
insert into clientes (id_cliente, nome, sexo, idade) values (2, "Jonas", "Masculino", 32);
insert into clientes (id_cliente, nome, sexo, idade) values (3, "Melissa", "Feminino", 53);

-- Vitor
insert into ingressos (id_venda, valor_pago, id_filme, id_cliente) values (1, 20, 1, 1);
insert into ingressos (id_venda, valor_pago, id_filme, id_cliente) values (2, 30, 2, 1);

-- Jonas
insert into ingressos (id_venda, valor_pago, id_filme, id_cliente) values (3, 40, 3, 2);

-- Melissa
insert into ingressos (id_venda, valor_pago, id_filme, id_cliente) values (4, 30, 2, 3);
insert into ingressos (id_venda, valor_pago, id_filme, id_cliente) values (5, 40, 3, 3);

select clientes.nome as cliente, filmes.titulo as filme, filmes.duracao, ingressos.valor_pago 

from ingressos 

inner join clientes on ingressos.id_cliente = clientes.id_cliente
inner join filmes on ingressos.id_filme = filmes.id_filme