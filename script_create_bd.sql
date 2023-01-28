create database arduino;

# Tabela clientes
create table arduino.clientes(
	cod int not null auto_increment,
    id varchar(8) not null unique,
    nome varchar(16) not null,
    canecas int default 0,
    primary key(cod)
);

# Tabela de consumo
create table arduino.consumo (
	cod int not null auto_increment,
    cod_cliente int,
    data_consumo datetime,
    primary key (cod),
    foreign key (cod_cliente) references clientes(cod)
);


# Tabela de compra crédito dos clientes
create table arduino.receita (
	cod int not null auto_increment,
    cod_cliente int,
    data_credito datetime,
    valor decimal(5,2),
    primary key (cod),
    foreign key (cod_cliente) references clientes(cod)
);

# Tabela de despesas
#
create table arduino.despesas(
	cod int not null auto_increment,
    despesa varchar(30) not null,
    data_despesa date not null,
    qtd int not null,
    valor decimal(7,2) not null,
    primary key(cod)
);
