update field_value set value = regexp_replace(value, '01/(\d+)/(\d+)', 'January \2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '\d+/(\d+)/(\d+)'
  );

update field_value set value = regexp_replace(value, '02/(\d+)/(\d+)', 'February \2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '\d+/(\d+)/(\d+)'
  );

update field_value set value = regexp_replace(value, '03/(\d+)/(\d+)', 'March \2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '\d+/(\d+)/(\d+)'
  );

update field_value set value = regexp_replace(value, '04/(\d+)/(\d+)', 'April \2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '\d+/(\d+)/(\d+)'
  );

update field_value set value = regexp_replace(value, '05/(\d+)/(\d+)', 'May \2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '\d+/(\d+)/(\d+)'
  );

update field_value set value = regexp_replace(value, '06/(\d+)/(\d+)', 'June \2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '\d+/(\d+)/(\d+)'
  );

update field_value set value = regexp_replace(value, '07/(\d+)/(\d+)', 'July \2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '\d+/(\d+)/(\d+)'
  );

update field_value set value = regexp_replace(value, '08/(\d+)/(\d+)', 'August \2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '\d+/(\d+)/(\d+)'
  );

update field_value set value = regexp_replace(value, '09/(\d+)/(\d+)', 'September \2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '\d+/(\d+)/(\d+)'
  );

update field_value set value = regexp_replace(value, '10/(\d+)/(\d+)', 'October \2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '\d+/(\d+)/(\d+)'
  );

update field_value set value = regexp_replace(value, '11/(\d+)/(\d+)', 'November \2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '\d+/(\d+)/(\d+)'
  );

update field_value set value = regexp_replace(value, '12/(\d+)/(\d+)', 'December \2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '\d+/(\d+)/(\d+)'
  );

