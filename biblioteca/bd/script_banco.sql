CREATE TABLE usuario(
  id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(100) NOT NULL,
  senha VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  --papéis: 'user', 'admin' e 'anon' p/ usuários não logados
  papel VARCHAR(100) NOT NULL DEFAULT 'user'
);

INSERT INTO usuario(nome, email, senha, papel) 
VALUES
("admin","admin@admin.com", "123", "admin"),
("usuario","usuario@usuario.com", "123", "user");