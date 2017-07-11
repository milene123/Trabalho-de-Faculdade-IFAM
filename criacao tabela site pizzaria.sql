
create database projetoPizza;
use projetoPizza;




show tables;


-- drop table produto;



create table cliente(
cliid int auto_increment not null,
clinome varchar(45) not null,
clicpf varchar(45) not null,
clifone varchar(45) not null,
clibairro varchar(45) not null,
clilogradouro varchar(45) not null,
clinumcasa varchar(45) not null,
clilogin varchar(45) not null,
clisenha varchar(45) not null,
primary key(cliid)
);

select * from itemcompra;
drop table cliente;

create table administrador(
admid int auto_increment not null,
admnome varchar(45) not null,
admcpf varchar(45) not null,
admlogin varchar(45) not null,
admsenha varchar(45) not null,
primary key(admid)
);
drop table administrador;
insert into administrador values(
1,"milene","123456789","mdse","123"
);
drop table administrador;
select * from categoria;


create table categoria(
catid int auto_increment not null,
catnome varchar(45) not null,
primary key(catid)
);
drop table administrador;
select * from administrador;

create table mensagem(
menid int auto_increment not null,
mennome varchar(45) not null,
menemail varchar(45) not null,
mendescricao varchar(45) not null,
mentipo varchar(45)not null,
primary key(menid)
);


create table produto(
proid  int auto_increment not null,
prodescricao varchar(45)not null,
proquantde varchar(45)not null,
provalor float not null,
procatid int not null,
proimagem varchar(45) not null,
primary key(proid),
foreign key (procatid) references categoria(catid));



create table curriculo(
	curid int auto_increment not null,
	curnome varchar(45) not null,
	curemail varchar(45) not null,
	curtelefone varchar(45) not null,
	curformacao varchar(45) not null,
	curcaminho varchar(400) not null,
	curcpf varchar(15) not null,
	primary key(curid)
);

create table compra(
	comid int auto_increment not null,
	comcliid int not null,
	comtotal float not null,
    comstatu varchar(45) not null,
	primary key(comid),
    foreign key (comcliid) references cliente(cliid)
);

drop table compra;
delete from compra where itid = 1;
select * from compra;

create table itemcompra(
	itid int auto_increment not null,
	itcomid int not null,
	itproid int not null,
	itqtde  varchar(45) not null,
	primary key(itid),
    foreign key (itcomid) references compra(comid),
    foreign key (itproid) references produto(proid)
);


drop table itemcompra;

select * from administrador;
select * from cliente;
select * from curriculo;
select * from compra;
select * from itemcompra;


desc curriculo;



insert into cliente value(0,'cliente','111','1111','Petropolis', 'Rua da Milene', '09','cliente@gmail.com','cliente1');
insert into administrador value(0,'admin','999','admin@gmail.com','admin');


insert into compra value(0,1,'130','pendente');

select last_insert_id();
drop table itemcompra;

insert into itemcompra value(0,1,1,'10');
insert into itemcompra value(0,1,2,'3');