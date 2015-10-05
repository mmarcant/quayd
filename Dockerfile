FROM google/golang

WORKDIR /gopath/src/app
ADD . /gopath/src/app/
RUN go get app

CMD quayd -port=8084 -github-token=$($GIT_TOKEN)

ENTRYPOINT ["/gopath/bin/app"]

EXPOSE 8084
