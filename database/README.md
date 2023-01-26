
``` powershell
# Run database
docker run -d -p 1525:1521 `
-e ORACLE_PASSWORD=mypass `
-e APP_USER=appuser `
-e APP_USER_PASSWORD=myapppass `
-v $pwd\:/container-entrypoint-initdb.d `
-v oradata:/opt/oracle/oradata `
gvenzl/oracle-xe:21.3.0
```