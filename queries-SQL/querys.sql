/*Ejercicio 1*/
SELECT COUNT(flightID) AS totalVuelos
FROM flights;

/*Ejercicio 2*/
SELECT Origin, AVG (ArrDelay) AS promLlegadas , AVG (DepDelay) AS promSalidas
FROM flights 
group by Origin;

/*Ejercicio 3*/
SELECT Origin, colYear, colMonth,  avg(ArrDelay) AS promLlegadas
FROM flights 
GROUP BY Origin, colYear, colMonth ORDER BY Origin ASC, colYear ASC, colMonth ASC;

/*Ejercicio 4*/
SELECT usairports.City, flights.Origin, flights.colYear, flights.colMonth, avg(flights.ArrDelay) AS promLlegadas
FROM flights 
INNER JOIN usairports ON  flights.Origin = usairports.IATA
GROUP BY usairports.City , colYear, colMonth 
ORDER BY usairports.City ASC, colYear ASC, colMonth ASC;

/*Ejercicio 5*/
SELECT UniqueCarrier, ColYear, ColMonth, SUM(Cancelled) As totalCancelados
FROM flights
where Cancelled > 0
GROUP BY UniqueCarrier, ColYear, ColMonth
ORDER BY totalCancelados DESC,   ColMonth ASC, ColYear ASC;

/*Ejercicio 6*/
SELECT TailNum, SUM(Distance) AS totalDistancia
FROM flights
GROUP BY TailNum
ORDER BY totalDistancia DESC LIMIT 1,10;

/*Ejercicio 7*/
SELECT UniqueCarrier, avg(ArrDelay) AS promLlegadas 
FROM flights
GROUP BY UniqueCarrier 
having avg(ArrDelay)>10
ORDER BY promLlegadas DESC;
 




