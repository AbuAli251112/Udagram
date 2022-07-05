cd ./www
aws elasticbeanstalk create-application-version --application-name MyApp --version-label <<pipeline.git.revision>> --region us-east-1 --source-bundle S3Bucket="myawsbucket251121",S3Key="Archive.zip"
aws elasticbeanstalk update-environment --application-name MyApp --environment-name MyApp --version-label <<pipeline.git.revision>>