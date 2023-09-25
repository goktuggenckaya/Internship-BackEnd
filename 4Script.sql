select *
from egitim_konular

select * 
from math_m_egitim_konular mmek

rfen_m_egitim_konular


rt_m_egitim_konular

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = N'rt_m_egitim_konular'

select * from egitim_uniteler eu2 

select* from egitim_dersler ed 

select * 
from egitim_uniteler eu , egitim_konular ek
where ek.

select eu.id, eu.ad, ed.ad
from egitim_dersler ed, egitim_uniteler eu 
where ed.id = eu.dersId 



select *
from (select eu.id, eu.ad as unite_ad, ed.ad as ders_ad
from egitim_dersler ed, egitim_uniteler eu 
where ed.id = eu.dersId) ders_unite, (select ek.id as content_id,
'egitim_konular' as Table_name,
0 as eders_id,
ek.dersId as ders_id,
ek.uniteId as unit_id,
ek.sira as 'Order',
ek.aciklama as aciklama,
ek.resim1 as resim1,
ek.resim2 as resim2,
ek.video as video_id
from egitim_konular ek
union all
select mmek.id as content_id,
'math_m_egitim_konular' as Table_name,
mmek.edersId  as eders_id,
mmek.dersId as ders_id,
mmek.uniteId as unit_id,
mmek.sira as 'Order',
mmek.aciklama as aciklama,
mmek.resim1 as resim1,
'-' as resim2,
mmek.video as video_id
from math_m_egitim_konular mmek
union all
select rmek.id as content_id,
'rfen_m_egitim_konular' as Table_name,
rmek.edersId as eders_id,
rmek.dersId as ders_id,
rmek.uniteId as unit_id,
rmek.sira as 'Order',
rmek.aciklama as aciklama,
rmek.resim1 as resim1,
'-' as resim2,
rmek.video as video_id
from rfen_m_egitim_konular rmek
union all
select rmek2.id as content_id,
'rt_m_egitim_konular' as Table_name,
rmek2.edersId as eders_id,
rmek2.dersId as ders_id,
rmek2.uniteId as unit_id,
rmek2.sira as 'Order',
rmek2.aciklama as aciklama,
rmek2.resim1 as resim1,
'-' as resim2,
rmek2.video as video_id
from rt_m_egitim_konular rmek2) uni_sorgu
where ders_unite.id = uni_sorgu.unit_id