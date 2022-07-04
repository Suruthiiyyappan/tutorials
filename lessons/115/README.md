
## Use Cases


- when code changes, we need to redeploy lambda (Update your Lambda function)
- get method (api gateway) for query
- post method (api gateway) for json payload
- grant access to s3 bucket
- custom domain to api gateway (https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html)








aws lambda invoke --region=us-east-1 --function-name=hello response.json
cat response.json


aws s3api get-bucket-acl --bucket lambda-arriving-roughy

curl -X POST \
-H "Content-Type: application/json" \
-d '{"name":"Anton"}' \
"https://wlvsq7js9i.execute-api.us-east-1.amazonaws.com/dev/hello"

curl "https://wlvsq7js9i.execute-api.us-east-1.amazonaws.com/dev/hello?Name=Anton"

chmod +x ./terraform.sh

aws lambda invoke --region=us-east-1 --function-name=s3 --cli-binary-format raw-in-base64-out --payload '{"bucket": "test-rich-buck","object": "hello.json"}' response.json


Error:
Make sure they exist and your bucket is in the same region as this function.","trace":["Error: Error getting object hello.json from bucket test-rich-buck. Make sure they exist and your bucket is in the same region as this function








## Create Lambda Function Using Terraform
## Create API Gateway Using Terraform
## Create Lambda Function with Dependencies & Access to S3 Bucket
