sudo apt-get -y -qq update
sudo apt-get install python3-pip python-dev build-essential
sudo pip install --upgrade setuptools
sudo pip install awsebcli --upgrade
eb init myprojectv3 --region us-east-1
eb use Myprojectv3-env
eb deploy Myprojectv3-env