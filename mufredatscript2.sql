

insert into kazanim(unite_id, konu_id, kazanim_key, kazanim_no, kazanim_adi)
select distinct unite_unite_id, konu_id ,kazanim_key,kazanim_no ,kazanim_adi from( 
select * from (
	select * , k.id as konu_id , u.id as unite_unite_id
	from  unite u 
		left join  konu k
		on k.unite_id = u.id ) as uk
	join dn_kazanim dk on dk.unite_adi = uk.unite_adi and dk.sinif  = uk.sinif and dk.ders = uk.ders and dk.unite_no = uk.unite_no
and (uk.konu_adi is null or uk.konu_adi = dk.konu_adi)) as hee

select * from kazanim k 

select count(*) from kazanim k 


select distinct unite_unite_id, konu_id ,kazanim_key,kazanim_no ,kazanim_adi from( 
select * from (
	select * , k.id as konu_id , u.id as unite_unite_id
	from  unite u 
		left join  konu k
		on k.unite_id = u.id ) as uk
	join dn_kazanim dk on dk.unite_adi = uk.unite_adi and dk.sinif  = uk.sinif and dk.ders = uk.ders and dk.unite_no = uk.unite_no
and (uk.konu_adi is null or uk.konu_adi = dk.konu_adi)) as hee

select count(*) from konu 

select ders, count(*) from unite u
group by ders 

select ders,unite_adi, konu_adi, count(*) from
(select distinct * , k.id as konu_id , u.id as unite_unite_id
from  unite u 
	left join  konu k
	on k.unite_id = u.id) hee
group by  ders,unite_adi,konu_adi

select * from 
(select distinct * , k.id as konu_id , u.id as unite_unite_id
from  unite u 
	left join  konu k
	on k.unite_id = u.id) hee
	where konu_adi= 'Kimyanın Temel Kanunları'
	
select * from konu k where konu_adi = 'Kimyanın Temel Kanunları'

select konu_adi, count(*)
from konu k 
group by konu_adi

update dn_kazanim set konu_adi = null where konu_adi =''

select * from konu k 

select * from konu k where konu_adi = 'Zayıf Etkileşimler'
	
select sinif, unite_adi, count(*)
from unite 
group by sinif ,unite_adi  
		
delete from dn_kazanim where ders ='Matematik';

delete from dn_kazanim where ders ='Geometri';

delete from dn_kazanim where ders ='Kimya';


select count(*)  from dn_kazanim dk 
 
truncate table unite,konu,kazanim 

truncate table dn_kazanim 

select * from dn_kazanim dk where konu_adi = 'Katı Cisimler'



select * from dn_kazanim dk  where unite_adi ='KARIŞIMLAR'


insert into unite(sinif,ders,unite_no,unite_adi) 
select distinct sinif  , ders, unite_no , unite_adi
from dn_kazanim dk;

CREATE TABLE mufredat.oldsorular (
	Table_id int4 NOT NULL,
	Table_name varchar(100) NOT NULL,
	unit_id int4 NOT NULL,
	test_id int4 NOT NULL,
	solution_video_id int4,
	orderr int4 NOT NULL,
	contentt varchar(20000) NOT NULL
);

/* Konu'su olmayanlar konu tablosunda null olarak gözüküyordu. Bunu silmek adına önce konu tablosundaki
 *  konu_no kolonu null olanların id'sini bulup, bu id'leri kazanım tablosunda konu_id'lere eşitleyip, 
 * tüm hepsini null'a çektik. Ardından da konu tablosundan sildik. Bunun için aşağıdaki iki satırı 
 * 70 kere run ettim.   */

update kazanim set konu_id = null where konu_id = (select MAX(id) from konu where konu_no is null);

delete from konu where id = (select MAX(id) from konu where konu_no is null);


select * from konu k 
/* bu kısımda mantık dersinin 53 kazanım yerine 54 kazanımı olduğunu fark ettiğimiz için tüm tablolardan
 * sildik ve asıl excel tablosunu düzelterek tekrardan yükledik/importladık.
 */
delete from kazanim where unite_id in (select id from unite where ders ='Mantık')

delete from unite where ders = 'Mantık'

select * from dn_kazanim where ders = 'Mantık'

select count(*) from unite

select distinct ders from unite

insert into unite(sinif,ders,unite_no,unite_adi) 
select distinct sinif  , ders, unite_no , unite_adi
from dn_kazanim dk
where ders = 'Mantık'






