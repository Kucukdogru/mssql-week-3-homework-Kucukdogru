--EN YUKSEK FATURA KODU BULMA

USE Dukkan 
GO
SELECT top 10 *
FROM tblSiparis s
	inner join tblSiparisDetay d on d.faturaKod=s.faturaKod
	order by s.toplam desc

/***************************************************/
/***************************************************/

--En yüksek toplam fiyata sahip faturaya dahil ürünleri ve faturayı sipariş veren müşterinin 
--adını soyadını listeyen SQL kodunu yazınız.

USE Dukkan 
GO


SELECT s.faturaKod, u.urunKod, u.urunAd, k.isim, k.soyad
FROM tblSiparis s
	inner join tblSiparisDetay d on d.faturaKod=s.faturaKod
	inner join tblUrun u on u.urunKod=d.urunKod
	inner join tblKullanici k on k.kullaniciKod=s.kullaniciKod
	where s.faturaKod = 504100
	order by s.toplam desc
	

	