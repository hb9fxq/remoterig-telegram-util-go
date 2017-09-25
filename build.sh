#!/bin/bash
PATH="/usr/local/go/bin:$PATH"
export GOPATH=$(pwd):~/devLibs/gopath

rm -rf bin/*

export GOARCH=amd64
export GOOS=linux
go install github.com/krippendorf/remoterig-telegram-util-go
