#!/usr/bin/env bash

export GOPATH=$HOME/go

DIR_SHITAMA=$(pwd)

function build_holder() {
    CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"' -o ./build/holder/holder ./holder/
}

function build_shard() {
    CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"' -o ./build/shard/shard ./shard/
}

function build_client() {
    CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"' -o ./build/client/client ./client/
}

function build_all() {
    build_holder
    build_shard
    build_client
}

function clean_holder() {
    rm -r ./build/holder/
}

function clean_shard() {
    rm -r ./build/shard/
}

function clean_client() {
    rm -r ./build/client/
}

function clean_all() {
    clean_holder
    clean_shard
    clean_client
}
