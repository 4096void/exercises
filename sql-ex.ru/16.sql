SELECT DISTINCT pc.model, pcc.model, pc.speed, pc.ram
FROM pc, pc AS pcc
WHERE pc.speed = pcc.speed
AND pc.ram = pcc.ram
AND pc.model > pcc.model
