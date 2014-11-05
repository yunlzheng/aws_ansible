FROM ansible/ubuntu12.04-ansible:stable

ADD provision /srv/ansible/
ADD . /vagrant
WORKDIR /srv/ansible

# Run Ansible to configure the Docker image
RUN ansible-playbook vagrant.yml -c local

# Other Dockerfile directives are still valid
EXPOSE 22 3001 80
