ansible-playbook -i ../provision/local ../provision/aws.yml --extra-vars "stack_name=$@"
