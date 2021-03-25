IMAGE_NAME := ninja.mocogawe.com/web-joli
IMAGE_TAG := 1.0

.PHONY: all clean build push

all: build

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .
	docker tag $(IMAGE_NAME):$(IMAGE_TAG) $(IMAGE_NAME):latest

clean:
	docker images $(IMAGE_NAME) | grep -q $(IMAGE_TAG) && docker rmi $(IMAGE_NAME):$(IMAGE_TAG) || true
	docker images $(IMAGE_NAME) | grep -q latest && docker rmi $(IMAGE_NAME):latest || true

push:
	docker push $(IMAGE_NAME):$(IMAGE_TAG)
	docker push $(IMAGE_NAME):latest
