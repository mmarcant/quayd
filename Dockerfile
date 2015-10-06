FROM golang:1.5.1-onbuild
RUN go get github.com/tools/godep
RUN go install github.com/tools/godep
RUN go get github.com/remind101/quayd
RUN go install github.com/remind101/quayd
RUN godep go build -o build/quayd ./cmd/quayd
CMD ./build/quayd -port=8084 -github-token=$GIT_TOKEN -registry-auth=test@verbling.com:$QUAY_TOKEN

EXPOSE 8084
