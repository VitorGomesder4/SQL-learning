A empresa deseja montar um banco de dados que relacione os filmes exibidos, os clientes e os ingressos vendidos. Para isso, foi decidido criar três tabelas principais:


    filmes: armazena os títulos dos filmes e suas durações;
    clientes: armazena os dados dos clientes que compraram ingressos;
    ingressos: registra a venda de ingressos, associando um cliente a um filme, com o valor pago.


Com base nesse cenário, execute as seguintes tarefas:


1 - Crie as tabelas necessárias com as chaves primárias e relacionamentos adequados usando FOREIGN KEY.


2 - Insira dados fictícios em cada tabela para simular o funcionamento real do sistema. Inclua pelo menos:

    3 filmes com diferentes durações;
    3 clientes com nomes distintos;
    3 vendas de ingressos, cada uma associando um cliente a um filme.


3 - Crie uma consulta SQL utilizando INNER JOIN que retorne:

    O nome do cliente;
    O título do filme assistido;
    A duração do filme;
    O valor pago pelo ingresso.


O resultado da consulta deve mostrar as informações de forma cruzada, combinando dados das três tabelas.