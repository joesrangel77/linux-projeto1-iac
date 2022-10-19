#!/bin/bash

echo " PASSO 1 - Criando Diretório ...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo " PASSO 2 -  Criando grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " PASSO 3 - Criando Usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p$(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p$(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p$(openssl passwd -6 Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p$(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p$(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p$(openssl passwd -6 Senha123) -G GRP_SEC

echo " PASSO 4 - Atribuindo Permissões dos Diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Script de Criação de Estrutura !!!! FINALIZADO !!!" 
