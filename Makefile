IMG_NAME = selenium
DOCKERHUB_ID = bonditdocker

build:
	docker build . \
		--file chrome/Dockerfile \
		--tag $(DOCKERHUB_ID)/$(IMG_NAME):latest
# --no-cache

build-chromium:
	docker build . \
		--file chromium/Dockerfile \
		--tag $(DOCKERHUB_ID)/$(IMG_NAME):chromium83
# --no-cache

push:
	docker push $(DOCKERHUB_ID)/$(IMG_NAME):latest

push-chromium:
	docker push $(DOCKERHUB_ID)/$(IMG_NAME):chromium83

tag-latest-to-chrome84:
	docker tag $(DOCKERHUB_ID)/$(IMG_NAME):latest $(DOCKERHUB_ID)/$(IMG_NAME):chrome84

pull:
	docker pull $(DOCKERHUB_ID)/$(IMG_NAME):latest

pull-chromium:
	docker pull $(DOCKERHUB_ID)/$(IMG_NAME):chromium83

run-it:
	docker run --name $(IMG_NAME)-container -it $(DOCKERHUB_ID)/$(IMG_NAME):latest bash

run-it-chromium:
	docker run --name $(IMG_NAME)-container -it $(DOCKERHUB_ID)/$(IMG_NAME):latest bash

rm:
	docker rm $(IMG_NAME)-container

login:
	docker login --username $(DOCKERHUB_ID)