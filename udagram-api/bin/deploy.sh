aws elasticbeanstalk create-application-version --application-name udagram-api --version-label <<pipeline.git.revision>> --source-bundle S3Bucket="$EB_BUCKET",S3Key="Archive.zip"
aws elasticbeanstalk update-environment --application-name udagram-api --environment-name udagramapi-env --version-label <<pipeline.git.revision>>