-- 01.02.2007 - 05.03.2014 tarihleri arasında hangi üründen kaç adet sipariş edildiğini bulan SQL kodunu yazınız.

USE Dukkan
GO


SELECT COUNT(*) ADET, d.urunKod, u.urunAd
FROM tblSiparis s
	INNER JOIN tblSiparisDetay d on s.faturaKod=d.faturaKod
	INNER JOIN tblUrun u on d.urunKod=u.urunKod
WHERE siparisTarih BETWEEN '01.02.2007' AND '05.03.2014'
GROUP BY d.urunKod, u.urunAd 
ORDER BY COUNT(*) DESC
GO


/******************************************************/
----------------------- KONTROL -----------------------
/******************************************************/


select count(*) from tblSiparisDetay d
	inner join tblSiparis s on d.faturaKod=s.faturaKod

where siparisTarih BETWEEN '01.02.2007' AND '05.03.2014' and urunKod = 3328
