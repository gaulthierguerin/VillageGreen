--D’ajouter des produits
INSERT INTO `product` (
    `product_id`,
    `product_name`,
    `product_desc`,
    `product_isAvailable`,
    `product_photo`,
    `product_qty`,
    `product_price`,
    `product_brand`,
    `subcategory_id`
)
VALUES (

);


--D’en supprimer

DELETE FROM `product`
WHERE `product_id` = '???'

--D’en modifier les caractéristiques (libellé, caractéristique, tarif)

UPDATE `product`
SET `product_desc`
WHERE `product_id` = '???'

--De modifier l'arborescence des catégories

--Chiffre d'affaires mois par mois pour une année sélectionnée



--Chiffre d'affaires généré pour un fournisseur



--TOP 10 des produits les plus commandés pour une année sélectionnée (référence et nom du produit, quantité commandée, fournisseur)



--TOP 10 des produits les plus rémunérateurs pour une année sélectionnée (référence et nom du produit, marge, fournisseur)



--Top 10 des clients en nombre de commandes ou chiffre d'affaires

SELECT * FROM customer


--Répartition du chiffre d'affaires par type de client



--Nombre de commandes en cours de livraison.

SELECT COUNT(*) AS OrderShipped FROM `shipping`
WHERE `shipping_date`
IS NOT NULL