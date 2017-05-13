.PHONY: test test_ui #ignoruj katalog

deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt
lint:
	flake8 hello_world test
test:
	PYTHONPATH=. py.test; \
	PYTHONPATH=. py.test  --verbose -s

run:
	python main.py
docker_build:
	docker build -t hello-world-printer .

USERNAME=asia21991
TAG=$(USERNAME)/hello-world-printer-app

docker_push:
	@docker login --username $(USERNAME) --password $(PASSWORD) ;\
	docker tag hello-world-printer $(TAG); \
	docker push $(TAG); \
	docker logout;

test_ui:
	python test_ui/sel.py
