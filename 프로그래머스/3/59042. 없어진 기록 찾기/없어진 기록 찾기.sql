SELECT OUTS.ANIMAL_ID, OUTS.NAME
FROM ANIMAL_OUTS AS OUTS
LEFT JOIN 
(
    SELECT *
    FROM ANIMAL_INS
) AS INS ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE INS.DATETIME IS NULL;