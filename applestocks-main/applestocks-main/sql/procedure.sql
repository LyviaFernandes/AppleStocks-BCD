DELIMITER //
CREATE PROCEDURE sp_relatorio (IN data_ref DATE)
BEGIN
    SELECT s.nm_companhia, p.date, p.fch_preco, d.dividendos_qtd
    FROM stocks s
    JOIN precos p ON s.id_stock = p.id_stock
    LEFT JOIN dividendos d ON s.id_stock = d.id_stock AND p.date = d.dividendos_dt
    WHERE p.date = data_ref;
END //
DELIMITER ;
