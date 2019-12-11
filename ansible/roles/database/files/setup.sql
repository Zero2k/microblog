CREATE USER 'exporter'@'%' IDENTIFIED BY '12345' WITH MAX_USER_CONNECTIONS 3;
GRANT PROCESS,
REPLICATION CLIENT,
SELECT
  ON *.* TO 'exporter'@'%';
GRANT SELECT ON performance_schema.* TO 'exporter'@'%';
