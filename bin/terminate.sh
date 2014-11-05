ansible-playbook -i ../provision/hosts ../provision/terminate.yml --extra-vars "stack_name=$@"
