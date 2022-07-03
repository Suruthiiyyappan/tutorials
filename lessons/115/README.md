
## Use Cases

- grant access to s3 bucket
- when code changes, we need to redeploy lambda (Update your Lambda function)
- custom domain to api gateway
- get method (api gateway) for query
- post method (api gateway) for json payload








aws lambda invoke --region=us-east-1 --function-name=HelloWorld response.json
cat response.json

curl -X POST \
-H "Content-Type: application/json" \
-d "{'name':'Anton'}" \
"https://tbli6zg4uk.execute-api.us-east-1.amazonaws.com/serverless_lambda_stage/hello"
