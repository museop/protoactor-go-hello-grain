#!/bin/bash

protoc --go_out=. --go_opt=paths=source_relative --proto_path=. protos.proto
protoc -I=. -I=$GOPATH/src --gograinv2_out=. protos.proto