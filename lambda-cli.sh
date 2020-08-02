# https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-awscli.html
# get defaults info. If error, check ~/.aws/config
aws lambda get-account-settings

aws iam create-role --role-name lambda-ex --assume-role-policy-document file://trust-policy.json

aws iam attach-role-policy --role-name lambda-ex --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole

aws lambda list-functions --max-items 10

# to be continued..

aws lambda create-function \
--region us-east-2 \
--function-name function \
--role arn:aws:iam::your-account#:role/your-role \
--runtime python3.7 \
--handler function.my_handler \
--zip-file fileb://your-file.zip