
INSERT INTO submission_list_column (id,title,input_type_id) VALUES (DEFAULT,'Submission Type (List)', 1);
INSERT INTO submission_list_column_value_path (submission_list_column_id,value_path,value_path_order) VALUES (currval('submission_list_column_id_seq'),'submissionTypes',0);
INSERT INTO submission_list_column_value_path (submission_list_column_id,value_path,value_path_order) VALUES (currval('submission_list_column_id_seq'),'name',1);

INSERT INTO submission_list_column (id,title,input_type_id) VALUES (DEFAULT,'Embargo Type', 1);
INSERT INTO submission_list_column_value_path (submission_list_column_id,value_path,value_path_order) VALUES (currval('submission_list_column_id_seq'),'embargoTypes',0);
INSERT INTO submission_list_column_value_path (submission_list_column_id,value_path,value_path_order) VALUES (currval('submission_list_column_id_seq'),'name',1);

#BEGIN;
#ALTER TABLE submission_list_column DISABLE TRIGGER ALL;
#ALTER TABLE submission_list_column_value_path DISABLE TRIGGER ALL;
#DELETE FROM submission_list_column WHERE id IN (68,69);
#DELETE FROM submission_list_column_value_path WHERE submission_list_column_id IN (68,69);
#ALTER TABLE submission_list_column_value_path ENABLE TRIGGER ALL;
#ALTER TABLE submission_list_column ENABLE TRIGGER ALL;
#COMMIT;

