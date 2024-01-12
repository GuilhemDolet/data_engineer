
-- On compte le nombre de villes : 

SELECT COUNT (DISTINCT customer_city)
FROM customers
ORDER BY customer_city ASC
;
-- résultat 4119

-- On compte le nombre d'état
SELECT COUNT (DISTINCT customer_state)
FROM customers
;
-- résultat 27


-- On compte le nombre de ville dans l'état de Sao Polo (table customers)
SELECT COUNT(*) FROM customers
GROUP BY customer_city
HAVING customer_city LIKE 'sao paulo'
;

-- résultat 15 540

-- Vérifier si la table customers contient des valeurs NULL
SELECT * FROM customers
WHERE customer_id IS NULL
OR customer_unique_id IS NULL
OR customer_zip_code IS NULL
OR customer_city IS NULL
OR customer_state IS NULL
;

-- Résultat non

-- Vérifier si il y'a des doublons dans la colonne unique_id
-- SELECT COUNT(DISTINCT customer_unique_id) FROM customers
-- ;
-- On voit ici que le résultat est inférieur au nombre de lignes total, donc il y a des doublons. 

SELECT COUNT(*) AS nbr_doublon, customer_unique_id
FROM customers
GROUP BY customer_unique_id
HAVING COUNT(*) > 1
;
-- Il y a des doublons, même des quadruplons ! 

-- Quelle est la relation théorique entre customers et orders (one to many ou many to one)?
-- CUSTOMERS |1| -> |n| ORDERS

SELECT COUNT(DISTINCT customer_unique_id), customer_state FROM customers
GROUP BY customer_state
;

-- 77|AC
-- 401|AL
-- 143|AM
-- 67|AP
-- 3277|BA
-- 1313|CE
-- 2075|DF
-- 1964|ES
-- 1952|GO
-- 726|MA
-- 11259|MG
-- 694|MS
-- 876|MT
-- 949|PA
-- 519|PB
-- 1609|PE
-- 482|PI
-- 4882|PR
-- 12384|RJ
-- 474|RN
-- 240|RO
-- 45|RR
-- 5277|RS
-- 3534|SC
-- 342|SE
-- 40302|SP
-- 273|TO

