FROM google/golang

WORKDIR /gopath/bin/app
ADD . /gopath/bin/app/

CMD quayd -port=8084 -github-token=$($GIT_TOKEN)

ENTRYPOINT ["/gopath/bin/app"]

EXPOSE 8084
