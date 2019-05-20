create table tb_usuario(
    cd_usuario int(11) not null auto_increment,
    nm_apelido varchar(50) not null,
    ds_senha   varchar(50) not null,
    primary key (cd_usuario),
    unique key  nm_apelido (nm_apelido)
);

create table tb_chat(
    cd_chat int(11) not null auto_increment,
    id_receptor int(11) not null,
    id_destinatario int(11) not null,
    ds_mensagem varchar(255) not null,
    primary key (cd_chat),
    key id_receptor (id_receptor),
    key id_destinatario (id_destinatario)
);

alter table tb_chat
add constraint tb_chat foreign key (id_receptor) references tb_usuario(cd_usuario),
add constraint tb_chat foreign key (id_destinatario) references tb_usuario(cd_usuario);