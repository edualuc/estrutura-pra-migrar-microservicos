# Serviço #NOME#

O serviço #NOME# tem por finalidade ...

## Dados para acesso

Configuração | Valor
-------------|------------------------
Porta        | 
URL Base     | /rest/#NOME#/
Nome no BFF  | #NOME#

## Para instalar e rodar 

Serviço em SpringBoot com Maven.

Necessita de Java 8.

### Como abrir o projeto

>- Entra na IDE (eclipse, ou outra)
>- Importe como 'projeto existente Maven'
>- Certifique-se que está conectado no ambiente com VPN

### Como rodar

> rode com 'Java Application'

## Estrutura de Branchs

Branch               | Descrição 
---------------------|-------------------------------
master               | código da versão de produção.
homologacao          | código da versão de homologação.
desenvolvimento      | código da versão de desenvolvimento.
prod_master          | branch usada para facilitar merge do monolito. Tem código idêntico a branch **master_EJB** de monolito do *sistema*.
feature/##-descricao | formato *Git Flow*. **feature** refere a características novas do código. **##** é numérico sequencial. **descrição** é a descrição de fácil identificação.
bugfix/##-descricao  | formato *Git Flow*. **bugfix** refere a correção do código que não está em produção. **##** é numérico sequencial. **descrição** é a descrição de fácil identificação.
hotfix/##-descricao  | formato *Git Flow*. **hotfix** refere a correção de código que está em produção. **##** é numérico sequencial. **descrição** é a descrição de fácil identificação.



