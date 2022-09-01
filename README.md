<h1 align="center"> Projeto One For All 💻 </h1>

 <div align="center">
 
 ![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)
 ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
 
</div>
<br/>

<h2 align="left"> Sobre: </h2>

Nesse projeto recebi uma tabela não normalizada, da qual precisa-va primeiro normalizada na terceira forma normal e populada para que assim pudesse executar queries com o intuito de encontrar as informações solicitadas.
Foi um ótimo projeto para treinar como popular uma tabela através do MySQL Workbench, e também treinar o uso de diversas queries.

## Tecnologias utilizadas:
- MySQL
- MySQL Workbench
- Docker

## Instalação do projeto localmente:
 
Após cada um dos passos, haverá um exemplo do comando a ser digitado para fazer o que está sendo pedido, caso tenha dificuldades e o exemplo não seja suficiente, não hesite em me contatar em pedrodc1236@gmail.com 

1. Abra o terminal e crie um diretório no local de sua preferência com o comando **mkdir**:
```javascript
  mkdir projetos
```

2. Entre no diretório que acabou de criar e depois clone o projeto:
```javascript
  cd projetos
  git clone git@github.com:pedrodc1236/project-one-for-all.git
```

3. Acesse o diretório do projeto e depois utilize o comando **npm install** para instalar todas as dependências necessárias:
```javascript
  cd project-one-for-all
  npm npm install
```

- ✨ **Dica:** Caso queira utilizar _Docker_ para rodar os testes localmente e validar as queries criadas, basta executar o comando:
```javascript
docker run -p 3306:3306 --name mysql_57 -e MYSQL_ROOT_PASSWORD=1234 -d mysql:5.7 mysqld --default-authentication-plugin=mysql_native_password
```
- Depois de usar o comando acima, agora basta executar os testes digitando no terminal:
```javascript
MYSQL_USER=root MYSQL_PASSWORD=1234 HOSTNAME=localhost npm test
```

## Habilidades Desenvolvidas

Neste projeto, desenvolvi as seguintes habilidades:

 - Normalizar a tabela SpotifyCone (para a 3ª Forma Normal), criar o schema no banco de dados local e populá-lo;
 - Realizar os desafios no banco normalizado e populado.
 


