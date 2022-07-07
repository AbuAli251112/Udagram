eb init udagram-api --region us-east-1 --platform node.js
eb use udagramapi-env
aws s3api list-buckets --query "Owner.ID"
aws s3api list-objects --bucket myawsbucket251121 --prefix myawsbucket251121/
aws s3api put-object-acl --bucket myawsbucket251121 --key myawsbucket251121/ --acl bucket-owner-full-control
eb deploy udagramapi-env