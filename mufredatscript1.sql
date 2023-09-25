select ek.id as content_id,
'egitim_konular' as Table_name,
'-' as eders_id,
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
from rt_m_egitim_konular rmek2



select count(*) from dn_kazanim dk 

delete from dn_kazanim where ders ='Matematik';

insert into unite(sinif,ders,unite_no,unite_adi) 
select distinct sinif  , ders, unite_no , unite_adi
from dn_kazanim dk; 


select * from unite

where id = 245;

select distinct u.id, dk.konu_no, dk.konu_adi  
from unite u, dn_kazanim dk
where dk.unite_adi = u.unite_adi

 select distinct ders from dn_kazanim dk 

update dn_kazanim set konu_adi  = trim(konu_adi); 

update dn_kazanim set unite_adi  = trim(unite_adi);

update dn_kazanim set sinif  = trim(sinif);

update dn_kazanim set konu_adi  = trim(konu_adi);

update dn_kazanim set kazanim_adi  = trim(kazanim_adi);

update dn_kazanim set kazanim_key  = trim(kazanim_key);



truncate table konu

insert into konu(unite_id, konu_no,konu_adi)
select distinct u.id, dk.konu_no, dk.konu_adi  
from unite u, dn_kazanim dk
where dk.unite_adi = u.unite_adi and dk.sinif  = u.sinif and dk.ders = u.ders and dk.unite_no = u.unite_no  

select count(*) from konu

select ders, count(*)
from dn_kazanim dk 
group by ders 

delete from konu where konu_no is null

select * from konu k 
where k.id = 631


select distinct k.unite_id, k.id, dk.kazanim_key, dk.kazanim_no, dk.kazanim_adi 
from konu k, dn_kazanim dk 
where  k.konu_adi = dk.konu_adi or  dk.ders='Coğrafya'


select * from  unite u ,  konu k where k.unite_id = u.id and ders='Coğrafya' ;


select new.kazanim_adi, count(*)
from(
select distinct kazanim_adi from (
select * from  unite u left join konu k on k.unite_id = u.id ) as u
join dn_kazanim dk on dk.unite_adi = u.unite_adi and dk.sinif  = u.sinif and dk.ders = u.ders and dk.unite_no = u.unite_no
) as new
group by new.kazanim_adi

select distinct unite_id, konu_id ,kazanim_key,kazanim_no ,kazanim_adi from (
select * from  unite u left join konu k on k.unite_id = u.id ) as u
join dn_kazanim dk on dk.unite_adi = u.unite_adi and dk.sinif  = u.sinif and dk.ders = u.ders and dk.unite_no = u.unite_no

select distinct unite_id, konu_id ,kazanim_key,kazanim_no ,kazanim_adi from( 
select * from (
	select * 
	from  unite u 
		left join (
			select id as konu_id, unite_id,konu_no ,konu_adi  
			from konu k
			) as mmm
		on mmm.unite_id = u.id ) as u
	join dn_kazanim dk on dk.unite_adi = u.unite_adi and dk.sinif  = u.sinif and dk.ders = u.ders and dk.unite_no = u.unite_no
	and (mmm.konu_a is null or mmm.konu_adi=)) as hee
where hee.kazanim_key = 'MAT.9.1.1.1'

select * from konu 
where id = 1615

select id as konu_id, unite_id,konu_no ,konu_adi  from konu k