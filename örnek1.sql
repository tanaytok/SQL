--  10B veya 10C sýnýfýndaki öðrencilerin numarasýný, adýný, soyadýný ve okuduðu kitaplarý, öðrenci adýna göre  listeleyin.

SELECT ogrenci.ogrno,ograd,ogrsoyad,sinif,kitapadi FROM ogrenci
join islem on ogrenci.ogrno = islem.ogrno
join kitap on islem.ogrno = kitap.kiapno
WHERE sinif = '10B' or '10C'
ORDER BY ogrenci.ograd