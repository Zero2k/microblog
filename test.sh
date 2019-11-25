#!/bin/sh
source venv/bin/activate
cd microblog
ls
cat Makefile
make validate exec-tests
