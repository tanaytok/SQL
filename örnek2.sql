-- Tur tablosuna gTarih adýnda bi alan ekleyin tur tablosunda guncelleme yapýldýðýnda gtarih alanýna güncelleme tarihini kaydediniz.

ALTER TABLE Tur ADD gTarih DATETIME null
CREATE TRIGGER TurGuncelle on Tur
AFTER UPDATE 
AS
BEGIN
	UPDATE Tur set gTarih =GETDATE() WHERE Turno in (SELECT Turno FROM Deleted)
END

UPDATE Tur SET Turadi = 'Baska bir tur.' WHERE Turno = 3 

SELECT * FROM Tur WHERE TUrno = 3