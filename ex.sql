create database db_formativa;

create table Aeronave(
	id_nav int primary key auto_increment,
    nome varchar(255) not null,
    comunicador varchar(255),
    destino varchar(255)

);

create table Passageiro(
	id_pass int primary key auto_increment,
    nome varchar(255) not null,
    telefone varchar(255),
    endereco varchar(255),
    id_nav int,
    foreign key (id_nav)references Aeronave(id_nav)
);

insert into Aeronave(nome, comunicador, destino)
values ("Aribus A320", "comunicador alfa", "Paris"),
		("Boeing 737", "comunicador bravo", "Nova iorque"),
        ("Embrear  E195", "comunicador charlie", "Londres"),
        ("Cessna 172", "comunicador delta", "Tóquio"),
        ("G650", "comunicador echo", "Dubai");
        
        
        insert into Passageiro(nome, telefone, endereco, id_nav)
values ("Albert Einsten", "123456789", "123 Rua da Ciência", 1),
		("Marie Curie", "987654321", "456 Avenida Radiação", 1),
        ("Isac Newton", "456789321", "789 Praça da gravidade", 3),
		("Michael B Jordan", "456789321", "237 Rua do cinêma", 2),
		("Chico moedas", "456789321", "Rio de janeiro", 4);
        


      