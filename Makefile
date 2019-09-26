build:
	protoc -I. --go_out=plugins=grpc:$(GOPATH)/src/github.com/Punam-Gaikwad/vessel-service \
      proto/vessel/vessel.proto