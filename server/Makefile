postgresinit:
	docker run --name postgres2 -p 5433:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=password -d postgres:alpine

postgres:
	docker exec -it postgres2 psql

createdb:
	docker exec -it postgres2 createdb --username=root --owner=root go-chat

dropdb: 
	docker exec -it postgres2 dropdb go-chat

migrateup:
	migrate -path db/migrations -database "postgresql://root:password@localhost:5433/go-chat?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migrations -database "postgresql://root:password@localhost:5433/go-chat?sslmode=disable" -verbose down

.PHONY: postgresinit postgres createdb dropdb