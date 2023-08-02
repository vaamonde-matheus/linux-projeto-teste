#!/bin/bash

# Criando Grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Concluído"

# Criando Usuários
useradd -m -G GRP_ADM carlos
useradd -m -G GRP_ADM maria
useradd -m -G GRP_ADM joao

useradd -m -G GRP_VEN debora
useradd -m -G GRP_VEN sebastiana
useradd -m -G GRP_VEN roberto

useradd -m -G GRP_SEC josefina
useradd -m -G GRP_SEC amanda
useradd -m -G GRP_SEC rogerio
echo "Concluído"

# Criando Diretórios
mkdir -p /publico /adm /ven /sec
echo "Concluído"

# Definindo permissões
chown -R carlos:GRP_ADM /adm
chown -R maria:GRP_ADM /adm
chown -R joao:GRP_ADM /adm

chown -R debora:GRP_VEN /ven
chown -R sebastiana:GRP_VEN /ven
chown -R roberto:GRP_VEN /ven

chown -R josefina:GRP_SEC /sec
chown -R amanda:GRP_SEC /sec
chown -R rogerio:GRP_SEC /sec

chmod -R 777 /publico
chmod -R 750 /adm
chmod -R 750 /ven
chmod -R 750 /sec

# Conclusão
echo "Infraestrutura criada com sucesso!"
