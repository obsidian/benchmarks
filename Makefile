run:
	@rm -f results.txt
	@docker-compose build
	@docker-compose run benchmark-http
	@docker-compose stop
	@docker-compose run benchmark-kemal
	@docker-compose stop
	@docker-compose run benchmark-orion
	@docker-compose stop
	@docker-compose run benchmark-orion-old
	@docker-compose stop
	@docker-compose run benchmark-orion-oak
	@docker-compose stop
	@docker-compose run benchmark-sinatra
	@docker-compose stop
	# @docker-compose -f ./benchmarks/docker-compose.yml run benchmark-express
	# @docker-compose -f ./benchmarks/docker-compose.yml stop
	# @docker-compose -f ./benchmarks/docker-compose.yml run benchmark-http-router
	# @docker-compose -f ./benchmarks/docker-compose.yml stop
