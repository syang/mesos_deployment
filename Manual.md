# User's Manual

## Preparing Environment
1. Ansible Installation
```#brew update
#brew install ansible
```
2. Setup virtualenv and initialize environment
(Needed only if you want to use dynamic inventory)

- [Install virtualenvwrapper if you have not done so](https://virtualenvwrapper.readthedocs.org/en/latest/)
- `#mkvirtualenv ansible_deploy`
- `#pip install -r requirements.txt`

3. Setup EC2 credential info
(Needed only if you want to use dynamic inventory)
`#export AWS_ACCESS_KEY_ID='xxx'`
`#export AWS_SECRET_ACCESS_KEY='yyy'`
Sanity Checking
`#python ./inventory/dynamic_aws/ec2.py --list

## NOTE:
This project is developed under the following environment:
* brew 0.9.5
* ruby 2.0.0
* python 2.7.6
* 1.8.4




# TODO List
1. Ansible Installation