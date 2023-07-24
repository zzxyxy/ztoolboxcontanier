all:
	docker build -t zxyxy/ztoolbox:0.4.0 .
push:
	docker push zxyxy/ztoolbox:0.4.0
