--x numaralı ürünü en fazla sipariş veren şehri bulunuz.

USE Dukkan
GO

SELECT d.urunKod 'URUN KODU', u.urunAd 'URUN ADI', k.sehir 'SEHİR ID', city.Isim 'SEHİR ADI', COUNT(*) ADET
FROM tblSiparis s 
	inner join tblSiparisDetay d on s.faturaKod=d.faturaKod
	inner join tblUrun u on u.urunKod=d.urunKod
	inner join tblKullanici k on k.kullaniciKod=s.kullaniciKod
	inner join tblSehir city on city.Id=convert(int,k.sehir)
	where u.urunKod=3027
	GROUP BY d.urunKod, u.urunAd,k.sehir, city.Isim
	ORDER BY COUNT(*) DESC