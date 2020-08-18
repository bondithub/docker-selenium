IMG_NAME = selenium
DOCKERHUB_ID = bonditdocker

build-latest:
	docker build . \
		--file chrome/Dockerfile \
		--tag $(DOCKERHUB_ID)/$(IMG_NAME):latest
# --no-cache

build-chromium:
	docker build . \
		--file chromium/Dockerfile \
		--tag $(DOCKERHUB_ID)/$(IMG_NAME):chromium83
# --no-cache

push-latest:
	docker push $(DOCKERHUB_ID)/$(IMG_NAME):latest

push-chromium:
	docker push $(DOCKERHUB_ID)/$(IMG_NAME):chromium83

tag-latest-to-chrome:
	docker tag $(DOCKERHUB_ID)/$(IMG_NAME):latest $(DOCKERHUB_ID)/$(IMG_NAME):chrome84

login:
	docker login --username $(DOCKERHUB_ID)