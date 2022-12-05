SELECT * FROM midproject.zuwendungen;

SELECT * FROM midproject.arbeitslos;
        
SELECT jahr, sum(betrag) as bildung_betrag FROM midproject.zuwendungen
WHERE politikbereich = 'Bildung'
group by jahr
order by jahr asc;

SELECT jahr, sum(betrag) as arbeit_betrag FROM midproject.zuwendungen
WHERE politikbereich = 'Arbeit'
group by jahr
order by jahr asc;

SELECT jahr, sum(betrag) as gleichstellung_betrag FROM midproject.zuwendungen
WHERE politikbereich = 'Gleichstellung'
group by jahr
order by jahr asc;

SELECT jahr, sum(betrag) as total_betrag FROM midproject.zuwendungen
group by jahr
order by jahr asc;