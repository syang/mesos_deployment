#!/bin/bash

vagrant up
source rc
ansible-playbook -i test_inventory.yml site.yml

