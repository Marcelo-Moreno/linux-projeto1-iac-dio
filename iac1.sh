#!/bin/bash
#Script criado no curso de Linux da DIO em 04/04/2025

echo "Criando diretórios ..."

mkdir /mnt/projetoDIO/publico -p -v
mkdir /mnt/projetoDIO/adm -p -v
mkdir /mnt/projetoDIO/ven -p -v
mkdir /mnt/projetoDIO/secdir -p -v

echo "Criando grupos de usuário ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p Senha123 -c "Carlos" -G GRP_ADM
useradd maria -m -s /bin/bash -p Senha123 -c "Maria Sholokhov" -G GRP_ADM
useradd joao  -m -s /bin/bash -p Senha123 -c "João" -G GRP_ADM

useradd debora -m -s /bin/bash -p Senha123 -c "Débora" -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p Senha123 -c "Sebastiana" -G GRP_VEN
useradd roberto -m -s /bin/bash -p Senha123 -c "Roberto" -G GRP_VEN

useradd josefina -m -s /bin/bash -p Senha123 -c "Josefina" -G GRP_SEC
useradd amanda -m -s /bin/bash -p Senha123 -c "Amanda" -G GRP_SEC
useradd rogerio -m -s /bin/bash -p Senha123 -c "Rogério" -G GRP_SEC

echo "Especificando permissões aos diretórios..."
#Especificando o dono
chown root:GRP_ADM /mnt/projetoDIO/adm
chown root:GRP_VEN /mnt/projetoDIO/ven
chown root:GRP_SEC /mnt/projetoDIO/secdir

chmod 770 /mnt/projetoDIO/adm
chmod 770 /mnt/projetoDIO/ven
chmod 770 /mnt/projetoDIO/secdir
chmod 777 /mnt/projetoDIO/publico

echo "Fim do Scritpt...."

