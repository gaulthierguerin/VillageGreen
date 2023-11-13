CREATE VIEW v_GlobalCde
AS
SELECT `codart`, SUM(`qtecde`) AS QteTot, SUM(`priuni`) AS PrixTot FROM ligcom
GROUP BY `codart`

CREATE VIEW v_VentesI100
AS 
SELECT * FROM vente
WHERE `codart` = 'I100'