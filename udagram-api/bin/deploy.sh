eb init myprojectv3 --region us-east-1 -p node.js
touch CodeDeployDemo-Trust.json
echo "{"Version": "2012-10-17","Statement": [{"Sid": "","Effect": "Allow","Principal": {"Service": ["codedeploy.amazonaws.com"]},"Action": "sts:AssumeRole"}]}" > CodeDeployDemo-Trust.json
aws iam create-role --role-name CodeDeployServiceRole --assume-role-policy-document file://CodeDeployDemo-Trust.json
eb create myprojectv3-env
eb use myprojectv3-env
eb deploy myprojectv3-env