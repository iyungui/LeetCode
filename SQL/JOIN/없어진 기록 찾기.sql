-- 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물
-- ANIMAL_OUTS 에는 있지만, ANIMAL_INS 에는 기록이 없는 동물
-- 먼저 두 테이블을 조인해야 함. ANIMAL_OUTS 에만 있는 것을 찾아야 함. 
-- (RIGHT JOIN ANIMAL_OUTS) WHERE ANIMAL_INS.Key IS NULL

SELECT O.ANIMAL_ID, O.NAME
FROM ANIMAL_INS I
RIGHT JOIN ANIMAL_OUTS O
ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE I.ANIMAL_ID IS NULL
ORDER BY O.ANIMAL_ID ASC;