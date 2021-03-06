psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER $JMCC_DB_USER WITH ENCRYPTED PASSWORD '$JMCC_DB_PASSWORD';
	CREATE DATABASE $JMCC_DB_NAME;
	GRANT ALL PRIVILEGES ON DATABASE $JMCC_DB_NAME TO $JMCC_DB_USER;
	\c $JMCC_DB_NAME;
	CREATE SCHEMA jltc AUTHORIZATION $JMCC_DB_USER;
EOSQL
echo host    all             all             0.0.0.0/0               trust >> /var/lib/postgresql/data/pg_hba.conf