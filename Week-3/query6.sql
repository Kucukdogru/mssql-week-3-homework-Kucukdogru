--En fazla sipariş veren meslek grubunu bulunuz.

USE Dukkan
GO

SELECT TOP 10 s.kullaniciKod, k.meslekKod, m.meslek, COUNT(*) ADET
FROM tblSiparis s
	INNER JOIN tblKullanici k on s.kullaniciKod=k.kullaniciKod
	INNER JOIN tblMeslek m on k.meslekKod=m.meslekKod
	GROUP BY s.kullaniciKod, k.meslekKod, m.meslek
	ORDER BY COUNT(*) DESC