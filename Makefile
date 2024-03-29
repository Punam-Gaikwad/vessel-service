build:
	protoc -I. \
	--go_out=plugins=grpc:. ./proto/vessel/vessel.proto
	GOOS=linux GOARCH=amd64 go build
	docker build -t vessel-service .

run:
	docker run -p 50052:50052 -e MICRO_SERVER_ADDRESS=:50052 -e MICRO_REGISTRY=mdns vessel-service