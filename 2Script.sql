select tats.uniteId, tats.konuId, tts.soru, tts.video 
from tarih_akilli_test_sorular tats, tarih_test_soru tts 
where tats.video = tts.video

select ds.id, ds.soru, ek.uniteid, ek.video
from deneme_soru ds, egitim_konular ek
where ds.video =ek.video

select *
from deneme_soru ds
where ds.id=17405

select *
from egitim_konular ek 


select ats.id as Table_id, 
'Akilli Test Sorulari' as Table_name, 
ats.uniteid as unit_id,
ats.konuId as konu_id,
ats.testid as test_id, 
ats.video as solution_video_id, 
ats.sira as 'Order', 
ats.soru as 'Content' 
from akilli_test_sorular ats
union all
select tats.id as Table_id, 
'Tarih Akilli Test Sorulari' as Table_name,
tats.uniteid as unit_id,
tats.konuId as konu_id,
tats.testid as test_id, 
tats.video as solution_video_id, 
tats.sira as 'Order', 
tats.soru as 'Content' 
from tarih_akilli_test_sorular tats
union all
select tts.id as Table_id, 
'Tarih Testi Soruları' as Table_name,
'-' as unit_id,
'-' as konu_id,
'-' as test_id,
tts.video as solution_video_id,
'-' as 'Order', 
tts.soru as 'Content' 
from tarih_test_soru tts
union all
select
ts.id as Table_id,
'Test_soru' as Table_name,
'-' as unit_id,
'-' as konu_id,
ts.testId as test_id,
ts.video as solution_video_id,
'-' as 'Order',
ts.soru as 'Content'
from test_soru ts
union all
select
ds.id as Table_id,
'deneme_soru' as Table_name,
'-' as unit_id,
'-' as konu_id,
ds.testId as test_id,
ds.video as solution_video_id,
ds.sira as 'Order',
ds.soru as 'Content'
from deneme_soru ds
union all
select
mts.id as Table_id,
'math_test_sorular' as Table_name,
mts.uniteId as unit_id,
mts.konuId as konu_id,
mts.testId as test_id,
mts.video as solution_video_id,
mts.sira as 'Order',
mts.soru as 'Content'
from math_test_sorular mts
union all
select
rtts.id as Table_id,
'rt_test_sorular' as Table_name,
rtts.uniteId as unit_id,
rtts.konuId as konu_id,
rtts.testId as test_id,
rtts.video as solution_video_id,
rtts.sira as 'Order',
rtts.soru as 'Content'
from rt_test_sorular rtts
union all
select
rfts.id as Table_id,
'rfen_test_sorular' as Table_name,
rfts.uniteId as unit_id,
rfts.konuId as konu_id,
rfts.testId as test_id,
rfts.video as solution_video_id,
rfts.sira as 'Order',
rfts.soru as 'Content'
from rfen_test_sorular rfts





