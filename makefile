docker:
	docker compose down && docker compose build --no-cache && docker compose up -d && \
    docker exec apache-test bash -c "cd / && composer run-script install"

test:
	docker exec apache-test bash -c "chromedriver --url-base=/wd/hub&" && \
	docker exec apache-test bash -c "cd / && composer run-script test"
