update field_value set value = regexp_replace(value, '(\d+)-01-(\d+)[T]{0,}.*', 'January \1')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '(\d+)-(\d+)-(\d+)(T.*){0,1}'
  );

update field_value set value = regexp_replace(value, '(\d+)-02-(\d+)(T.*){0,1}', 'February \1')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '(\d+)-(\d+)-(\d+)(T.*){0,1}'
  );

update field_value set value = regexp_replace(value, '(\d+)-03-(\d+)(T.*){0,1}', 'March \1')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '(\d+)-(\d+)-(\d+)(T.*){0,1}'
  );

update field_value set value = regexp_replace(value, '(\d+)-04-(\d+)(T.*){0,1}', 'April \1')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '(\d+)-(\d+)-(\d+)(T.*){0,1}'
  );

update field_value set value = regexp_replace(value, '(\d+)-05-(\d+)(T.*){0,1}', 'May \1')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '(\d+)-(\d+)-(\d+)(T.*){0,1}'
  );

update field_value set value = regexp_replace(value, '(\d+)-06-(\d+)(T.*){0,1}', 'June \1')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '(\d+)-(\d+)-(\d+)(T.*){0,1}'
  );

update field_value set value = regexp_replace(value, '(\d+)-07-(\d+)(T.*){0,1}', 'July \1')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '(\d+)-(\d+)-(\d+)(T.*){0,1}'
  );

update field_value set value = regexp_replace(value, '(\d+)-08-(\d+)(T.*){0,1}', 'August \1')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '(\d+)-(\d+)-(\d+)(T.*){0,1}'
  );

update field_value set value = regexp_replace(value, '(\d+)-09-(\d+)(T.*){0,1}', 'September \1')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '(\d+)-(\d+)-(\d+)(T.*){0,1}'
  );

update field_value set value = regexp_replace(value, '(\d+)-10-(\d+)(T.*){0,1}', 'October \1')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '(\d+)-(\d+)-(\d+)(T.*){0,1}'
  );

update field_value set value = regexp_replace(value, '(\d+)-11-(\d+)(T.*){0,1}', 'November \1')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '(\d+)-(\d+)-(\d+)(T.*){0,1}'
  );

update field_value set value = regexp_replace(value, '(\d+)-12-(\d+)(T.*){0,1}', 'December \1')
  where id in (
    select distinct fv.id from field_value fv inner join field_predicate fp on fv.field_predicate_id = fp.id where fp.value = 'dc.date.issued' and fv.value ~ '(\d+)-(\d+)-(\d+)(T.*){0,1}'
  );
