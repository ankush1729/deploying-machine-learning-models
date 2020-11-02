NAME=regmodel-deploy
COMMIT_ID=$(shell git rev-parse HEAD)


build-ml-api-heroku:
	docker build --build-arg PIP_EXTRA_INDEX_URL=https://oCzazHgzXSgLYvR94ykL@pypi.fury.io/ankush1729/ -t registry.heroku.com/regmodel-deploy/web:latest .

push-ml-api-heroku:
	docker push registry.heroku.com/regmodel-deploy/web:latest
