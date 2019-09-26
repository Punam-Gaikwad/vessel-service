build:
	protoc -I. \
	--go_out=plugins=grpc:. ./proto/vessel/vessel.proto
