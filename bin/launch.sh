ansible-playbook -i ../provision/hosts ../provision/aws.yml --extra-vars "stack_name=$@"
