eb init myprojectv3 --region us-east-1 -p node.js
eb create myprojectv3-env --service-role service-role
eb use myprojectv3-env
eb deploy myprojectv3-env