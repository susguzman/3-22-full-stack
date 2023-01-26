# Backend
A backend using express and Oracle as database.

## Get Started

```
# Setting env vars
export ORACLE_USER=postgres
export ORACLE_PASS=<your_pass>
export ORACLE_CONNSTR=localhost:1521/xepdb1
export SERVER_PORT=3800

npm install
npm start
```

``` powershell
# Run Container
docker run -d -p 3800:3800 `
-e ORACLE_USER=appuser `
-e ORACLE_PASS=myapppass `
-e ORACLE_CONNSTR=172.17.0.2:1521/xepdb1 `
backend:0.1.0
```