update input_type set validation_pattern = '^\w+ \d{4}$' where name = 'INPUT_DEGREEDATE';
update input_type set validation_pattern = '^\d{4}-\d{1,2}-\d{1,2}$' where name = 'INPUT_DATETIME';
update input_type set name = 'INPUT_DATE' where name = 'INPUT_DATETIME';

