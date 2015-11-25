CREATE EXTERNAL TABLE test_table (
  id INT,
  col_1 STRING,
  col_2 TIMESTAMP
)
ROW FORMAT SERDE 'com.cloudera.sqoop.contrib.FieldMappableSerDe'
WITH SERDEPROPERTIES (
  "fieldmappable.classname" = "com.sqoop.QueryResult"
)
STORED AS SEQUENCEFILE
LOCATION 'hdfs:///user/sagar/sqldata';
