# create a bucket, then upload to it recursively
aws s3 mb s3://bucket-name
aws s3 cp --recursive my-docs/ s3://bucket-name
