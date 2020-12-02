USE Dukkan
GO

SELECT k.kullaniciKod,k.kullaniciAd, k.isim, k.soyad, m.meslek 
FROM tblKullanici k
	inner join tblMeslek m on m.meslekKod=k.meslekKod where k.kullaniciKod in
	(
	SELECT kullaniciKod
	FROM tblKullanici k
		EXCEPT
	SELECT kullaniciKod
	FROM tblSiparis s
	)



/********************************************************/
------------------ alternative 2 ------------------------
/********************************************************/

USE Dukkan
GO

SELECT kullaniciKod, kullaniciAd, k.isim, k.soyad, m.meslek
FROM tblKullanici k
	inner join tblMeslek m on m.meslekKod=k.meslekKod
WHERE kullaniciKod NOT IN (SELECT kullaniciKod FROM tblSiparis);