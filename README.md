# DevOps With Ansible

This is a Devops example project, in this project we both have project code and also the ansible script.

the express demo project is clone from [https://github.com/dreamerslab/express-todo-example.git](https://github.com/dreamerslab/express-todo-example.git)

After this you can imagine， we can automate everything with the same ansible script.

* we can build vagrant as local development env with ansible
* we can build docker image with ansible
* we can build the aws instance with ansible
* we can build aws ami use packer with ansible
* we can automate deploy the application with ansible

**Automate Everything**

## Local Development With Vagrant/Docker

For local development we use vagrant as our dev env.

In order to setup a local dev env. i can just use the follow method:

```
vagrant up
```

> after this, vagrant will create a new virtual machine, and provision the vagrant with ansible

> Other Notes: If you like Docker rather than Vagrant. You can also provision the docker with ansible

```
FROM ansible/ubuntu12.04-ansible:stable

ADD provision /srv/ansible/
ADD . /vagrant
WORKDIR /srv/ansible

# Run Ansible to configure the Docker image
RUN ansible-playbook docker.yml -c local
```

## AWS Development

**in order use aws we need the follow environment variables:**

* AWS_ACCESS_KEY:  AWS access key
* AWS_SECRET_KEY: AWS secret key

> You can define mutil enviroments.
> for example if we need build a test env in aws. you can modify the ./provision/enviroments/test.yml
> and then you can use the follow command to set up a new aws instance for test

```
cd bin
./launch.sh test
```
