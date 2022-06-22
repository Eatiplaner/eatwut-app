include .env
gen-proto:
	curl -H "Authorization: token $(GH_PROTO_REPO_TOKEN)" \
		-H "Accept: application/vnd.github.v3.raw" \
		-o protos/jwt.proto \
		-L "https://api.github.com/repos/Eatiplaner/eatiplan-grpc-proto/contents/auth/jwt.proto"
	protoc --dart_out=lib protos/jwt.proto
