infra:
	git pull
	terraform init
	terraform apply -auto-approve -var ssh_username=Aarti -var ssh_password=Aarti@431721
	## Username and Password should not be hardcoded, Here we just hardcoding because to avoid the passing of input. This needs to be parsed as input in real time

ansible:
	git pull
	ansible-playbook -i $(tool_name)-internal.learntechnology.shop, tool-setup.yml -e ansible_user=Aarti -e ansible_password=Aarti@431721 -e tool_name=$(tool_name)
	## Username and Password should not be hardcoded, Here we just hardcoding because to avoid the passing of input. This needs to be parsed as input in real time

infra-destroy:
    git pull
	terraform destroy -auto-approve -var ssh_username=Aarti -var ssh_password=Aarti@431721


