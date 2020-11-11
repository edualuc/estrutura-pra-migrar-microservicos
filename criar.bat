@echo off

if "%1"=="" goto ops

REM TROCAR ESSE REDIRECIONAMENTO QUANDO TIVER OS REPOSITORIOS
goto init

:init
mkdir %1
cd %1
echo ---Iniciando repositorio vazio
git init

goto branchs

:clone

echo ---Iniciando clone de repositorio
git clone https://$URL/OTR/%1
cd %1

goto branchs

:branchs
echo ---Iniciando criacao das branchs
sed "s/#NOME#/%1/g" ../README.md > README.md
git add .
git commit -m "Initial commit: README.md " 
git remote add monolito https://$URL/OTR/repositorio.git
git checkout -b "desenvolvimento"
git checkout -b "homologacao"
git checkout -b "prod_master"

echo ---
echo ---Iniciando copia da branch master_EJB de servidor de producao do monolito (34MB)...
git pull --depth 1 monolito master_EJB --allow-unrelated-histories

echo ---Criando branch de desenvolvimento da 1a feature
git checkout -b "feature/01-rq01-criacao-microservico"

echo ---Criando estrutura Spring Padrão
cp -r ../projeto-padrao/* ./

echo ---
echo ---Passos para fazer agora: 
echo 1 - excluir arquivos que nao pertencem ao microservico (ou monolito) e commitar.
echo 2 - criar/alterar arquivo .gitignore para incluir arquivos excluidos e commitar.
echo 3 - alterar README.md com os parâmetros certos.
echo 4 - Quando estiver ok dar um git push para 'origin' nao para 'monolito' (origin deve apontar para repositorio novo).

goto fim

:ops
echo Como usar:
echo rodar no programa git bash ou em ambiente linux
echo passar como parametro o nome do servico a ser criado

:fim
echo ---Concluido
