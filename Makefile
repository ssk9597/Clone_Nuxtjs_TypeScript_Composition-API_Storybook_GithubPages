start:
	cp .env.example .env
	docker-compose up -d --build
	docker-compose exec app sh -c "cd src && cp .env.example .env"

down:
	docker-compose down

restart:
	docker-compose down
	docker-compose up -d --build