
use bsmdb;

select * from item_info;

select * from user_info;

select * from dd_item_type;

update item_info set ITEM_PASSWORD = null where id = 8;


insert into dd_item_type values(1,0,'dir','文件夹',0,1);
select * from dd_item_type;
insert into dd_item_type values(2,0,'txt','文本文件',0,1);
delete from dd_item_type where TYPE_ID = 1;


select userinfo0_.ID as ID10_, userinfo0_.STATUS as STATUS10_, userinfo0_.USER_CREATE_DATE as USER3_10_, userinfo0_.USER_EMAIL as USER4_10_, userinfo0_.USER_GUID as USER5_10_, userinfo0_.USER_LAST_LOGIN_DATE as USER6_10_, userinfo0_.USER_LOGO as USER7_10_, userinfo0_.USER_NAME as USER8_10_, userinfo0_.USER_PASSWORD as USER9_10_, userinfo0_.USER_PATH as USER10_10_, userinfo0_.USER_PHONE as USER11_10_, userinfo0_.USER_SPACE_SIZE as USER12_10_, userinfo0_.USER_TYPE as USER13_10_ from note_alphadb.user_info userinfo0_ where (userinfo0_.USER_NAME=? )
;

select * from item_info into outfile 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/demo.xls';

SHOW VARIABLES LIKE 'secure_file_priv';

select ii.item_guid, ii.item_name, ii.item_path, (case when ii.item_password is not null then '1' else ' ' end) as psw, ii.item_create_date, ii.item_last_modified_date, uic.class_name, group_concat(uit.tag_name separator ',') as tag_names 
from item_info ii 
left join item_class_info ici 
on ici.item_id = ii.id 
left join item_tag_info iti 
on iti.item_id = ii.id 
left join user_item_classification uic 
on uic.user_id = ii.user_id and uic.class_id = ici.class_id 
 left join user_item_tag uit 
on uit.tag_id = iti.tag_id 
where ii.user_id = 1 and ii.item_type = 2 
 group by ii.item_guid;
 
 
 

 
  ALTER TABLE user_item_tag drop COLUMN tag_name;
 
 
  ALTER TABLE user_item_tag add COLUMN TAG_NAME varchar(20);
 
 
drop table user_info;

select * from user_info;
 
 delete from user_info where ID=1;
 
 drop database bsmdb;
 
 select ID from user_info where USER_NAME='RicciLIao';
 
 show variables like '%time_zone%';
 
 
 set global time_zone='+8:00';
 commit;
 
 call createUser('1','1','1','1','1','1',@p_out);
 
 select @p_out;
 
  SELECT now();
 
select count(ID) FROM user_info WHERE USER_PHONE = '15626248822' and USER_NAME = 'RicciLiao';
 
 