#!/bin/sh

set -e

cd ../s3
npm ci
# zip -r ../s3.zip node_modules s3/function.js

cd ../terraform
terraform apply
