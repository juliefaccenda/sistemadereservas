# Sistema de Reservas de Hotéis

Este projeto é um sistema básico de reservas de hotéis, desenvolvido com PHP, JavaScript e MySQL.

## Tecnologias Utilizadas

- **Linguagens:** PHP, JavaScript (ES6+), HTML5, CSS3
- **Banco de Dados:** MySQL
- **Servidor Web:** Apache

## Funcionalidades

- **Busca de Hotéis:** Filtra hotéis disponíveis com base nas datas de check-in e check-out.
- **Cadastro de Reservas:** Permite realizar reservas em hotéis disponíveis.
- **Interface Responsiva:** Simples e funcional.

## Configuração e Instalação

### Requisitos
- Servidor Apache com suporte a PHP
- Banco de Dados MySQL

### Configuração
1. Clone este repositório:
   ```bash
   git clone https://github.com/seuusuario/sistema-reservas-hoteis.git
   ```
2. Configure o banco de dados:
   - Importe o arquivo `database.sql` no phpMyAdmin ou em seu banco de dados.
   
3. Configure a conexão com o banco de dados em `db.php`:
   ```php
   $host = 'seu_servidor';
   $dbname = 'nome_do_banco';
   $username = 'usuario';
   $password = 'senha';
   ```

4. Execute o projeto no servidor local.

## Estrutura do Projeto
```
/
|-- db.php                # Configuração do banco de dados
|-- buscar_hoteis.php     # Lógica para buscar hotéis disponíveis
|-- reservar_hotel.php    # Lógica para registrar reservas
|-- index.html            # Interface principal
|-- database.sql          # Script de criação do banco de dados
|-- README.md             # Documentação do projeto
```

## Como Usar
1. Abra o navegador e acesse o sistema localmente.
2. Selecione as datas de check-in e check-out.
3. Escolha um hotel disponível e clique em "Reservar".

## Melhorias Futuras
- Autenticação de usuários.
- Painel de administração para gerenciar reservas e hotéis.
- Integração com APIs externas de pagamento.

## Licença
Este projeto está licenciado sob a licença MIT. Sinta-se à vontade para usá-lo e modificá-lo.

---
Desenvolvido por **Seu Nome** - [julie.faccenda@gmail.com](mailto:julie.faccenda@gmail.com)

