FROM golang:1.3-onbuild

CMD quayd -port=8084 -github-token=$($GIT_TOKEN)

EXPOSE 8084
