## Create Lambda Function Using Terraform

- create `hello` folder
- create `hello/function.js` file
  - mention that next function will be with dependencies, and it's similar with all languages not only NodeJS
- create `terraform`
- create `0-provider.tf`
- create `1-lambda-bucket.tf`
- create `2-hello-lambda.tf`
  - metion etag if small and source_hash when bigger then 16mb due to multi upload
  - metion `archive_file` in ci/cd should not be used and instead use cli commands
- cd terraform
- terraform init
- terraform apply
- open AWS Console S3
  - find zip in the bucket
- open AWS Console CloudWatch
- open AWS Console Lambda
- invoke function
```bash
aws lambda invoke \
--region=us-east-1 \
--function-name=hello \
response.json
cat response.json
```
- make change in the function, add !!!
- terraform apply
- invoke again
```bash
aws lambda invoke \
--region=us-east-1 \
--function-name=hello \
response.json
cat response.json
```

## Create API Gateway Using Terraform

- create `3-api-gateway.tf`
  - logs optionsl, later show logs in cloudwatch
- create `4-hello-api-gateway.tf`
- terraform apply
- open AWS Console API Gateway
  - click main
  - click routes
  - click post and get
- invoke function with GET
```bash
curl "https://cqqwi6n5r2.execute-api.us-east-1.amazonaws.com/dev/hello?Name=Anton"
```
- invoke function with POST
```bash
curl -X POST \
-H "Content-Type: application/json" \
-d '{"name":"Anton"}' \
"https://cqqwi6n5r2.execute-api.us-east-1.amazonaws.com/dev/hello"
```
- open CloudWatch access logs
  - show post and get requests


## Create Lambda Function with Dependencies & Access to S3 Bucket

- create `5-test-bucket.tf`
- create `s3` folder
- create `s3/function.js`
- run
```bash
cd ..
cd s3
npm init
npm install aws-sdk
```
- create `6-s3-lambda.tf`
- create `terraform.sh`
- run `chmod +x terraform.sh`
```bash
cd ..
cd terraform
./terraform.sh
```
- invoke function ()update bucket name in payload
```bash
aws lambda invoke \
--region=us-east-1 \
--function-name=s3 \
--cli-binary-format raw-in-base64-out \
--payload '{"bucket":"test-distinct-spaniel","object":"hello.json"}' \
response.json

cat response.json
```

- update s3 function ` + ' works!!!'`
```bash
./terraform.sh

aws lambda invoke \
--region=us-east-1 \
--function-name=s3 \
--cli-binary-format raw-in-base64-out \
--payload '{"bucket":"test-distinct-spaniel","object":"hello.json"}' \
response.json

cat response.json
```
