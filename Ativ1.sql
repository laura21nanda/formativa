create database bd_universidade;


create table universidade(
	id_uni int primary key auto_increment,
    nome varchar(255) not null,
    telefone varchar(50), 
    enderenco varchar(255)
);

create table estudante(
     id_estudante int primary key auto_increment,
    nome varchar(255) not null,
    telefone varchar(50), 
    enderenco varchar(255),
    id_uni int,
    foreign key (id_uni) references universidade(id_uni)
);


insert into universidade (nome, telefone, enderenco)
values ("Universidade 1", "1234-5678", "Itapetininga"),
		("Universidade 2", "1234-5678", "Sorocaba"),
        ("Universidade 3", "1234-5678", "Minas Gerais"),
        ("Universidade 4", "1234-5678", "Santa Catarina"),
        ("Universidade 5", "1234-5678", "Mato Grosso");
        
        insert into estudante (nome, telefone, enderenco, id_uni)
values ("Beatrice de Oliveira Almeida", "1234-5678", "Guareí", 1),
		("Davi Francisco De Oliveira Almeida", "1234-5678", "Itapetininga", 2),
        ("Rian Augusto Pereira mourao", "1234-5678", "Sorocaba",3),
        ("Gabriel augusto Diogo Moreno", "1234-5678", "Pernambuco", 4),
        ("Gilberto da costa Barros", "1234-5678", "Tatuí", 5);
        
  
select * from universidade;

select * from estudante;

update estudante 
set nome = 'Bia Oliveira' 
where id_estudante = 1;

update universidade 
set nome = 'Universidade 6' 
where id_uni = 3;

delete from estudante 
where id_estudante = 5;

create view wv_estdante_est AS 

select 
estudante.nome AS Nome_estudante,
universidade.nome As Nome_universidade,
universidade.cidade AS cidade_universidade

from 
estudante

inner join 
-- intersecção das duas tabelas
universidade ON estudante.id_uni = universidadee.id_uni;

select * from wv_estdante_est AS 