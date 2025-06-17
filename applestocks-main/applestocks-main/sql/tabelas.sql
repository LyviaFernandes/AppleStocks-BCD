create database appleStocks;
use appleStocks;

CREATE TABLE stocks (
  id_stock INT AUTO_INCREMENT PRIMARY KEY,
  simbolo VARCHAR(10) NOT NULL,
  nm_companhia VARCHAR(100) NOT NULL
);

INSERT INTO stocks (id_stock, simbolo, nm_companhia)
VALUES (1, 'AAPL', 'Apple Inc.');

CREATE TABLE precos (
  id_precos INT AUTO_INCREMENT PRIMARY KEY,
  id_stock INT NOT NULL,
  date DATE NOT NULL,
  abr_preco FLOAT NOT NULL,
  fch_preco FLOAT NOT NULL,
  preco_alto FLOAT NOT NULL,
  preco_baixo FLOAT NOT NULL,
  volume INT NOT NULL,
  FOREIGN KEY (id_stock) REFERENCES stocks(id_stock)
);

CREATE TABLE dividendos (
  id_dividendos INT AUTO_INCREMENT PRIMARY KEY,
  id_stock INT NOT NULL,
  dividendos_dt DATE NOT NULL,
  dividendos_qtd FLOAT NOT NULL,
  FOREIGN KEY (id_stock) REFERENCES stocks(id_stock)
);
 
 SHOW DATABASES;
 SHOW GRANTS FOR 'root'@'localhost';
 GRANT ALL PRIVILEGES ON applestocks.* TO 'root'@'localhost';
FLUSH PRIVILEGES;


