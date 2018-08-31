#!/bin/bash
set -e
dep ensure
go build ./...
go build
gometalinter --vendor --deadline=60s ./...
go test ./...