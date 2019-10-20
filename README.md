# Build AWS EC2 Machine Images (AMI) With Packer and Ansible

If you are running EC2 instances the chances are you will have encountered scenarios where you need to build custom Amazon Machine Images (AMI).

## Packer

Packer is an open source tool used to create machine images for multiple platforms from a single source configuration. It gives you the flexibility to build custom AMI's.

## Ansible

Ansible is a configuration management tool that will be used during the build process to configure the application environment, dependencies and even deploy the application on to the AMI. 

This process can also be fully automated for integrating into a CI/CD pipeline.

This project builds an AMI using packer, and ansible to install a simple Java Web Application and its dependencies.
