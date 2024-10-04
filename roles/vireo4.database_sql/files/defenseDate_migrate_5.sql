UPDATE field_value SET value = regexp_replace(value, '(\d+)-(\d+)-(\d+)[T]{0,}.*', '\1-\2-\3') WHERE id IN ( SELECT DISTINCT fv.id FROM field_value fv WHERE fv.field_predicate_id = 30);
