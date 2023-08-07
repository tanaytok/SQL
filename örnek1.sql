--  10B veya 10C s�n�f�ndaki ��rencilerin numaras�n�, ad�n�, soyad�n� ve okudu�u kitaplar�, ��renci ad�na g�re  listeleyin.

SELECT ogrenci.ogrno,ograd,ogrsoyad,sinif,kitapadi FROM ogrenci
join islem on ogrenci.ogrno = islem.ogrno
join kitap on islem.ogrno = kitap.kiapno
WHERE sinif = '10B' or '10C'
ORDER BY ogrenci.ograd