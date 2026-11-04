-- 環境変数 → psql 変数（postgres:15 の psql は \getenv が使える）
\getenv db_svr      DB_SVR
\getenv db_test_svr DB_TEST_SVR

CREATE DATABASE :"db_svr";
CREATE DATABASE :"db_test_svr";
