#!/bin/bash

### Processos definidos para o grupo administrativo

echo "Criando objetos do grupo administrativo" 

if [ ! -d "/adm" ]       ## Verifica se o diretórios não existe, caso exista considera
then                     ## que o script ja foi executado no servidor
    echo "Criando diretório do grupo administrativo" 
    mkdir /adm
    chmod 770 /adm

	
	echo "Criando agrupamento do grupo administrativo" 
    groupadd GRP_ADM
	chown root:GRP_ADM /adm

    echo "Criando usuários do grupo administrativo"
    useradd carlos -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
    useradd maria  -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
    useradd joao   -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
	echo "Objetos do grupo administrativo criados"
else
    echo "ERRO: Existem objetos do grupo ADMINISTRATIVO, comandos não executados"
fi

### Processos definidos para o grupo vendas

echo "Criando objetos do grupo vendas" 

if [ ! -d "/ven" ]       ## Verifica se o diretórios não existe, caso exista considera 
then                     ## que o script ja foi executado no servidor
    echo "Criando diretórios do grupo vendas" 
    mkdir /ven
    chmod 770 /ven

	
	echo "Criando agrupamento do grupo vendas" 
    groupadd GRP_VEN
	chown root:GRP_VEN /ven

    echo "Criando usuários do grupo vendas"
    useradd debora     -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
    useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
    useradd roberto    -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
	echo "Objetos do grupo de vendas criados"
else
    echo "ERRO: Existem objetos do grupo VENDAS, comandos não executados"
fi

### Processos definidos para o grupo secretariado

echo "Criando objetos do grupo secretariado" 

if [ ! -d "/sec" ]       ## Verifica se o diretórios não existe, caso exista considera 
then                     ## que o script ja foi executado no servidor
    echo "Criando diretórios do grupo secretariado" 
    mkdir /sec
    chmod 770 /sec

	
	echo "Criando agrupamento do grupo secretariado" 
    groupadd GRP_SEC
	chown root:GRP_SEC /sec

    echo "Criando usuários do grupo secretariado"
    useradd josefina -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
    useradd amanda   -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
    useradd rogerio  -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
	echo "Objetos do grupo secretariado criados"
else
    echo "ERRO: Existem objetos do grupo SECRETARIADO, comandos não executados"
fi

### Processos definidos para os objetos publicos

echo "Criando objetos público" 

if [ ! -d "/publico" ]       ## Testa se o diretórios existe, caso exista considera 
then                     ## que o script ja foi executado no servidor
    echo "Criando diretórios /publico" 
    mkdir /publico
    chmod 777 /publico
	echo "Objetos publicos criados"
else
    echo "ERRO: Existem objetos PÚBLICO, comandos não executados"
fi

