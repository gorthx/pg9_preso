# createdb lfnw -p 5556
alias p='psql lfnw'

## First pass (get toasted tuples)
#p -c "create table toasty (id serial primary key, bigdeal text)"
#p -f load.sql
#p -c "vacuum toasty"
#p -c "SELECT relname, relpages FROM pg_class,(SELECT reltoastrelid FROM pg_class WHERE relname = 'toasty') AS ss WHERE oid = ss.reltoastrelid OR oid = (SELECT reltoastidxid FROM pg_class WHERE oid = ss.reltoastrelid) ORDER BY relname"
#exit

## Second pass (no toasted tuples)
p -c "drop table toasty"
p -c "create table toasty (id serial primary key, bigdeal text)"
p -c "alter table toasty alter COLUMN bigdeal set storage main"
p -f load.sql
p -c "vacuum toasty"
p -c "SELECT relname, relpages FROM pg_class,(SELECT reltoastrelid FROM pg_class WHERE relname = 'toasty') AS ss WHERE oid = ss.reltoastrelid OR oid = (SELECT reltoastidxid FROM pg_class WHERE oid = ss.reltoastrelid) ORDER BY relname"
