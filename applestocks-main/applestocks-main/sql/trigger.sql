CREATE TABLE log_audita (
  id_log INT AUTO_INCREMENT PRIMARY KEY,
  operacao VARCHAR(10),
  data_hora DATETIME,
  id_dividendos INT,
  dividendos_antigo FLOAT,
  dividendos_novo FLOAT
);

DELIMITER //
CREATE TRIGGER tr_update
BEFORE UPDATE ON dividendos
FOR EACH ROW
BEGIN
  INSERT INTO log_audita (operacao, data_hora, id_dividendos, dividendos_antigo, dividendos_novo)
  VALUES ('UPDATE', NOW(), OLD.id_dividendos, OLD.dividendos_qtd, NEW.dividendos_qtd);
END //
DELIMITER ;