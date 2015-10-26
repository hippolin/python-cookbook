#!/usr/bin/env bats

@test "virtualenv test environment should exist" {
     [ -f "/tmp/kitchen/virtualenv/bin/activate" ]
}

@test "virtualenv test environment should be owned by root" {
    ls -l /tmp/kitchen/virtualenv | grep "root root"
}

@test "virtualenv test environment should have boto working" {
    /tmp/kitchen/virtualenv/bin/python -c 'import boto; boto.Version'
}
