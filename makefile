    infra:
	    git pull
	    terraform init
	    terraform apply -auto-approve -var ssh_username=Aarti -var ssh_password=Aarti@431721

    ansible:
	    git pull
	    ansible-playbook -i $(tool_name)-internal.learntechnology.shop, tool-setup.yml -e ansible_user=Aarti -e ansible_password=Aarti@431721 -e tool_name=$(tool_name)

    infra-destroy:
	    git pull
        terraform init
        terraform destroy -auto-approve -var ssh_username=Aarti -var ssh_password=Aarti@431721
        ansible-playbook -i vault-internal.learntechnology.shop, tool-setup.yml -e ansible_user=Aarti -e ansible_password=Aarti@431721 -e tool_name=vault