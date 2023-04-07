CONTAINER_NAME=ts_template

.PHONY: build
build:
	@docker compose run --rm $(CONTAINER_NAME) npm run build

install:
	@docker compose run --rm $(CONTAINER_NAME) npm install $(deps)

linter/check:
	@docker compose run --rm $(CONTAINER_NAME) npm run linter:check
	
linter/fix:
	@docker compose run --rm $(CONTAINER_NAME) npm run linter:fix

test:
	@docker compose run --rm $(CONTAINER_NAME) npm run test
	
test/coverage:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:coverage
	@docker compose run --rm $(CONTAINER_NAME) chown -R node:node coverage

test/watch:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:watch

test/watch/coverage:
	@docker compose run --rm $(CONTAINER_NAME) npm run test:watch:coverage
	@docker compose run --rm $(CONTAINER_NAME) chown -R node:node coverage
