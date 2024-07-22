curl -s -X PUT -H  "Content-Type:application/json" http://localhost:8083/connectors/postgres-cdc/config \
  -d '{
    "connector.class": "io.debezium.connector.postgresql.PostgresConnector",
    "database.user": "debezium",
    "database.dbname": "nyc",
    "topic.prefix": "test_cdc",
    "tasks.max": "1",
    "database.hostname": "nyc-postgres",
    "database.password": "debezium",
    "table.include.list": "public.test",
    "database.port": "5432",
    "plugin.name": "pgoutput"
  }'