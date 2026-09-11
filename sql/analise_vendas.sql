-- ==========================================
-- PROJETO E-COMMERCE
-- ANÁLISE DE VENDAS COM SQL
-- ==========================================


-- ==========================================
-- 1. VISUALIZAR TODOS OS PEDIDOS
-- ==========================================

SELECT *
FROM pedidos;


-- ==========================================
-- 2. FATURAMENTO TOTAL
-- ==========================================

SELECT SUM(valor) AS faturamento_total
FROM pedidos;


-- ==========================================
-- 3. TOTAL DE UNIDADES VENDIDAS
-- ==========================================

SELECT SUM(quantidade) AS unidades_totais_vendidas
FROM pedidos;


-- ==========================================
-- 4. QUANTIDADE DE UNIDADES VENDIDAS POR PRODUTO
-- ==========================================

SELECT produto,
       SUM(quantidade) AS unidades_vendidas
FROM pedidos
GROUP BY produto
ORDER BY unidades_vendidas DESC;


-- ==========================================
-- 5. FATURAMENTO POR PRODUTO
-- ==========================================

SELECT produto,
       SUM(valor) AS faturamento
FROM pedidos
GROUP BY produto
ORDER BY faturamento DESC;


-- ==========================================
-- 6. FATURAMENTO POR CATEGORIA
-- ==========================================

SELECT categoria,
       SUM(valor) AS faturamento
FROM pedidos
GROUP BY categoria
ORDER BY faturamento DESC;


-- ==========================================
-- 7. QUANTIDADE DE UNIDADES VENDIDAS POR CATEGORIA
-- ==========================================

SELECT categoria,
       SUM(quantidade) AS unidades_vendidas
FROM pedidos
GROUP BY categoria
ORDER BY unidades_vendidas DESC;


-- ==========================================
-- 8. FATURAMENTO POR CIDADE
-- ==========================================

SELECT cidade,
       SUM(valor) AS faturamento
FROM pedidos
GROUP BY cidade
ORDER BY faturamento DESC;


-- ==========================================
-- 9. QUANTIDADE DE PEDIDOS POR CIDADE
-- ==========================================

SELECT cidade,
       COUNT(*) AS quantidade_pedidos
FROM pedidos
GROUP BY cidade
ORDER BY quantidade_pedidos DESC;


-- ==========================================
-- 10. TICKET MÉDIO POR CIDADE
-- ==========================================

SELECT cidade,
       AVG(valor) AS ticket_medio
FROM pedidos
GROUP BY cidade
ORDER BY ticket_medio DESC;


-- ==========================================
-- 11. TICKET MÉDIO POR CATEGORIA
-- ==========================================

SELECT categoria,
       AVG(valor) AS ticket_medio
FROM pedidos
GROUP BY categoria
ORDER BY ticket_medio DESC;


-- ==========================================
-- 12. FATURAMENTO POR CLIENTE
-- ==========================================

SELECT cliente,
       SUM(valor) AS faturamento
FROM pedidos
GROUP BY cliente
ORDER BY faturamento DESC;


-- ==========================================
-- 13. QUANTIDADE DE PEDIDOS POR CLIENTE
-- ==========================================

SELECT cliente,
       COUNT(*) AS quantidade_pedidos
FROM pedidos
GROUP BY cliente
ORDER BY quantidade_pedidos DESC;


-- ==========================================
-- 14. TICKET MÉDIO POR CLIENTE
-- ==========================================

SELECT cliente,
       AVG(valor) AS ticket_medio
FROM pedidos
GROUP BY cliente
ORDER BY ticket_medio DESC;


-- ==========================================
-- 15. MAIOR PEDIDO INDIVIDUAL
-- ==========================================

SELECT *
FROM pedidos
ORDER BY valor DESC
LIMIT 1;
