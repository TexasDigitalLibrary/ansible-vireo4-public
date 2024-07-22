update field_value set value = regexp_replace(value, '(\d+)-(\d+)-(\d+)[T]{0,}.*', '\1-\2-\3')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'defense_date' and fv.value ~ '(\d+)-(\d+)-(\d+)T.*'
  );

update field_value set value = regexp_replace(value, '(\d{1,2})/(\d{1,2})/(\d{1,4})', '\3-\1-\2')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'defense_date' and fv.value ~ '(\d+)/(\d+)/(\d+)'
  );

