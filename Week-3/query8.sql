--Adı A ile başlayıp soyadında ak geçen müşterilerden en fazla sipariş vereni bulunuz.

USE Dukkan
GO

SELECT TOP 1 COUNT(*) 'Siparis Adet', s.kullaniciKod, k.isim, k.soyad
FROM tblKullanici k
	inner join tblSiparis s on k.kullaniciKod=s.kullaniciKod
	WHERE isim LIKE 'A%' 
	and soyad LIKE '%ak%'
	group by s.kullaniciKod, k.isim, k.soyad
	ORDER BY COUNT(*) DESC