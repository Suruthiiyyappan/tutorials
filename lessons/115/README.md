
## Use Cases


- when code changes, we need to redeploy lambda (Update your Lambda function)
- get method (api gateway) for query
- post method (api gateway) for json payload
- grant access to s3 bucket
- custom domain to api gateway (https://docs.aws.amazon.com/apigateway/latest/developerguide/how-to-custom-domains.html)








aws lambda invoke --region=us-east-1 --function-name=HelloWorld response.json
cat response.json


aws s3api get-bucket-acl --bucket lambda-arriving-roughy

curl -X POST \
-H "Content-Type: application/json" \
-d '{"name":"Anton"}' \
"https://lhoc4mvmch.execute-api.us-east-1.amazonaws.com/dev/hello"

curl "https://lhoc4mvmch.execute-api.us-east-1.amazonaws.com/dev/hello?Name=Anton"

chmod +x ./build-s3-lambda.sh
