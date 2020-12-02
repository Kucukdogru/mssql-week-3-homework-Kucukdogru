--İptal edilen siparişlerde bulunan ürünleri listeyiniz.

USE Dukkan
GO

SELECT * FROM tblSiparisDurum;
GO

SELECT u.urunAd, s.siparisDurumKod FROM tblSiparis s
inner join tblSiparisDurum d on s.siparisDurumKod=d.siparisDurumKod
inner join tblSiparisDetay detay on s.faturaKod=detay.faturaKod
inner join tblUrun u on u.urunKod=detay.urunKod
WHERE s.siparisDurumKod = 10;