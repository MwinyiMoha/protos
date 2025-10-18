codegen:
	protoc \
	--proto_path=protobuf \
	--go_out=gen/go/pb \
	--go_opt=paths=source_relative \
	--go-grpc_out=gen/go/pb \
	--go-grpc_opt=paths=source_relative \
	protobuf/*.proto

descriptor:
	protoc \
	--proto_path=protobuf \
	--include_imports \
	--include_source_info \
	--descriptor_set_out=gen/artifacts/desc.pb \
	protobuf/*.proto

.PHONY: codegen descriptor
