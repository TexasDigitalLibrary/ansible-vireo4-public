update weaver_users set active_filter_id = null where role not in ('ROLE_REVIEWER', 'ROLE_ADMIN', 'ROLE_MANAGER');

delete from weaver_users_saved_filters where user_id not in (select id from weaver_users where role not in ('ROLE_REVIEWER', 'ROLE_ADMIN', 'ROLE_MANAGER'));

delete from weaver_users_filter_columns where user_id not in (select id from weaver_users where role not in ('ROLE_REVIEWER', 'ROLE_ADMIN', 'ROLE_MANAGER'));

delete from named_search_filter_group_named_search_filters where named_search_filter_group_id in (select id from named_search_filter_group where name is not null and named_search_filter_group_id not in (select id from named_search_filter_group where user_id not in (select id from weaver_users where role not in ('ROLE_REVIEWER', 'ROLE_ADMIN', 'ROLE_MANAGER'))));

delete from named_search_filter_group_saved_columns where named_search_filter_group_id in (select id from named_search_filter_group where name is not null and named_search_filter_group_id not in (select id from named_search_filter_group where user_id not in (select id from weaver_users where role not in ('ROLE_REVIEWER', 'ROLE_ADMIN', 'ROLE_MANAGER'))));

delete from named_search_filter_group where user_id not in (select id from weaver_users where role in ('ROLE_ADMIN', 'ROLE_MANAGER', 'ROLE_REVIEWER'));


update named_search_filter_group set public_flag = false where name is null and public_flag = true;


update named_search_filter_group set columns_flag = false where name is null and columns_flag = true;

select nsfg.id, nsfg.name, u.id, u.username, u.active_filter_id from named_search_filter_group nsfg left join weaver_users u on u.active_filter_id = nsfg.id where active_filter_id is not null;

select * from named_search_filter_group where name = '';

select * from named_search_filter_group where name is null;

select * from named_search_filter_group where name is NULL order by user_id;


BEGIN;
ALTER TABLE weaver_users DISABLE TRIGGER ALL;
ALTER TABLE named_search_filter_group DISABLE TRIGGER ALL;

DELETE from named_search_filter_group where name = '';

DELETE from named_search_filter_group where name is null;

DELETE from named_search_filter_group where name is NULL;


ALTER TABLE named_search_filter_group ENABLE TRIGGER ALL;
ALTER TABLE weaver_users ENABLE TRIGGER ALL;
COMMIT;


