--Ürünlerin ürün adı, ürün kodunu ve KDV dahil satış fiyatını listeleyiniz.

USE Dukkan
GO

SELECT urunAd, urunKod, listeFiyat*KDVoran 'KDV DAHİL SATIŞ FİYATI' 
FROM tblUrun;