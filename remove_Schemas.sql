USE @DatabaseName;
SELECT s.name
FROM sys.schemas s
WHERE s.principal_id = USER_ID(@DatabaseUser);

ALTER AUTHORIZATION ON SCHEMA::db_owner TO dbo;