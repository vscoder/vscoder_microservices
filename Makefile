BIN_DIR?=~/bin
TEMP_DIR?=/tmp

# Environment name
ENV?=stage

# Source code directory
SRC_DIR?=./src

# Docker-machine
DOCKER_MACHINE_VERSION?=v0.16.0
DOCKER_MACHINE_BASEURL=https://github.com/docker/machine/releases/download
DOCKER_MACHINE_OS?=$(shell uname -s)
DOCKER_MACHINE_ARCH?=$(shell uname -m)
DOCKER_MACHINE?=${BIN_DIR}/docker-machine
DOCKER_MACHINE_NAME?=docker-host
DOCKER_MACHINE_TYPE?=n1-standard-1
DOCKER_MACHINE_REGION?=europe-west1-b

# Packer-related variables
PACKER_VERSION?=1.4.4
PACKER_URL=https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip
PACKER?=${BIN_DIR}/packer

# Ansible-related variables
## Relative to ./ansible subdir
ANSIBLE?=../../.venv/bin/ansible

# Terraform-related variables
TERRAFORM_VERSION?=0.12.12
TERRAFORM_URL=https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
TERRAFORM?=${BIN_DIR}/terraform

# Tflint-related variables
TFLINT_VERSION?=0.12.1
TFLINT_URL=https://github.com/wata727/tflint/releases/download/v${TFLINT_VERSION}/tflint_linux_amd64.zip
TFLINT?=${BIN_DIR}/tflint

# Hadolint-related variables
HADOLINT_VERSION?=1.17.2
HADOLINT_URL=https://github.com/hadolint/hadolint/releases/download/v${HADOLINT_VERSION}/hadolint-Linux-x86_64
HADOLINT?=${BIN_DIR}/hadolint

# Helm
HELM_VERSION?=3.0.2
HELM_URL=https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz
HELM?=${BIN_DIR}/helm

# mongodb_exporter
MONGODB_EXPORTER_DOCKER_IMAGE_NAME?=$${USER_NAME}/mongodb-exporter
MONGODB_EXPORTER_VERSION?=v0.10.0

debug:
	echo BIN_DIR=${BIN_DIR}
	echo TEMP_DIR=${TEMP_DIR}
	echo ENV=${ENV}
	echo DOCKER_MACHINE_VERSION=${DOCKER_MACHINE_VERSION}
	echo DOCKER_MACHINE_BASEURL=${DOCKER_MACHINE_BASEURL}
	echo DOCKER_MACHINE_OS=${DOCKER_MACHINE_OS}
	echo DOCKER_MACHINE_ARCH=${DOCKER_MACHINE_ARCH}
	echo DOCKER_MACHINE=${DOCKER_MACHINE}
	echo DOCKER_MACHINE_NAME=${DOCKER_MACHINE_NAME}
	echo DOCKER_MACHINE_TYPE=${DOCKER_MACHINE_TYPE}
	echo DOCKER_MACHINE_REGION=${DOCKER_MACHINE_REGION}

install_requirements:
	test -d ./.venv || python3 -m venv ./.venv
	./.venv/bin/pip install -r requirements.txt

install_requirements_dev: install_requirements
	./.venv/bin/pip install -r requirements-dev.txt

install_requirements_virtualenv:
	test -d ./.venv || virtualenv ./.venv
	./.venv/bin/pip install -r requirements.txt

install_docker_machine:
	curl -L ${DOCKER_MACHINE_BASEURL}/${DOCKER_MACHINE_VERSION}/docker-machine-${DOCKER_MACHINE_OS}-${DOCKER_MACHINE_ARCH} >${TEMP_DIR}/docker-machine && \
	mv ${TEMP_DIR}/docker-machine ${BIN_DIR}/docker-machine && \
	chmod +x ${BIN_DIR}/docker-machine

install_packer:
	wget ${PACKER_URL} -O ${TEMP_DIR}/packer-${PACKER_VERSION}.zip
	unzip -o ${TEMP_DIR}/packer-${PACKER_VERSION}.zip -d ${TEMP_DIR}/
	mv ${TEMP_DIR}/packer ${BIN_DIR}/packer-${PACKER_VERSION}
	ln -sf packer-${PACKER_VERSION} ${BIN_DIR}/packer
	${BIN_DIR}/packer --version && rm ${TEMP_DIR}/packer-${PACKER_VERSION}.zip

install_terraform:
	wget ${TERRAFORM_URL} -O ${TEMP_DIR}/terraform-${TERRAFORM_VERSION}.zip
	unzip -o ${TEMP_DIR}/terraform-${TERRAFORM_VERSION}.zip -d ${TEMP_DIR}/
	mv ${TEMP_DIR}/terraform ${BIN_DIR}/terraform-${TERRAFORM_VERSION}
	ln -sf terraform-${TERRAFORM_VERSION} ${BIN_DIR}/terraform
	${BIN_DIR}/terraform --version && rm ${TEMP_DIR}/terraform-${TERRAFORM_VERSION}.zip

install_tflint:
	wget ${TFLINT_URL} -O ${TEMP_DIR}/tflint-${TFLINT_VERSION}.zip
	unzip -o ${TEMP_DIR}/tflint-${TFLINT_VERSION}.zip -d ${TEMP_DIR}/
	mv ${TEMP_DIR}/tflint ${BIN_DIR}/tflint-${TFLINT_VERSION}
	ln -sf tflint-${TFLINT_VERSION} ${BIN_DIR}/tflint
	${BIN_DIR}/tflint --version && rm ${TEMP_DIR}/tflint-${TFLINT_VERSION}.zip

install_hadolint:
	wget ${HADOLINT_URL} -O ${TEMP_DIR}/hadolint-${HADOLINT_VERSION}
	mv ${TEMP_DIR}/hadolint-${HADOLINT_VERSION} ${BIN_DIR}/hadolint-${HADOLINT_VERSION}
	ln -sf hadolint-${HADOLINT_VERSION} ${BIN_DIR}/hadolint
	chmod +x ${BIN_DIR}/hadolint
	${BIN_DIR}/hadolint --version

install_helm:
	wget ${HELM_URL} -O ${TEMP_DIR}/helm-${HELM_VERSION}.tar.gz
	cd ${TEMP_DIR}/ && tar vxzf ${TEMP_DIR}/helm-${HELM_VERSION}.tar.gz
	mv ${TEMP_DIR}/linux-amd64/helm ${BIN_DIR}/helm-${HELM_VERSION}
	chmod +x ${BIN_DIR}/helm-${HELM_VERSION}
	ln -sf helm-${HELM_VERSION} ${BIN_DIR}/helm
	${BIN_DIR}/helm version && rm -rf ${TEMP_DIR}/helm-${HELM_VERSION}.tar.gz ${TEMP_DIR}/linux-amd64

###
# docker-machine
###
docker_machine_create:
	. ./env && \
	${DOCKER_MACHINE} create --driver google \
		--google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
		--google-machine-type ${DOCKER_MACHINE_TYPE} \
		--google-zone ${DOCKER_MACHINE_REGION} \
		${DOCKER_MACHINE_NAME}
	${DOCKER_MACHINE} env ${DOCKER_MACHINE_NAME}

docker_machine_rm:
	${DOCKER_MACHINE} rm ${DOCKER_MACHINE_NAME}
	${DOCKER_MACHINE} env --unset

docker_machine_ip:
	${DOCKER_MACHINE} ip ${DOCKER_MACHINE_NAME}


###
# docker-machine logging
###
docker_machine_create_logging:
	. ./env && \
	${DOCKER_MACHINE} create --driver google \
		--google-machine-image https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/family/ubuntu-1604-lts \
		--google-machine-type n1-standard-1 \
		--google-open-port 5601/tcp \
		--google-open-port 9292/tcp \
		--google-open-port 9411/tcp \
		logging
	${DOCKER_MACHINE} env logging

docker_machine_rm_logging:
	make docker_machine_rm DOCKER_MACHINE_NAME=logging

docker_machine_ip_logging:
	make docker_machine_ip DOCKER_MACHINE_NAME=logging


###
# Build
###
build_comment:
	. ./env && \
	cd ${SRC_DIR}/comment && bash ./docker_build.sh

build_post:
	. ./env && \
	cd ${SRC_DIR}/post-py && bash ./docker_build.sh

build_ui:
	. ./env && \
	cd ${SRC_DIR}/ui && bash ./docker_build.sh

build_prometheus:
	. ./env && \
	cd ./monitoring/prometheus && bash docker_build.sh

build: build_post build_comment build_ui build_prometheus mongodb_exporter_docker_build cloudprober_build alertmanager_build grafana_build


###
# Push
###
push_comment:
	. ./env && \
	docker push $${USER_NAME}/comment

push_post:
	. ./env && \
	docker push $${USER_NAME}/post

push_ui:
	. ./env && \
	docker push $${USER_NAME}/ui

push_prometheus:
	. ./env && \
	docker push $${USER_NAME}/prometheus

push: push_comment push_post push_ui push_prometheus mongodb_exporter_push cloudprober_push alertmanager_push grafana_push


###
# mongodb_exporter
###
mongodb_exporter_clone:
	cd ./monitoring \
	&& (test -d ./mongodb_exporter || git clone https://github.com/percona/mongodb_exporter.git)

mongodb_exporter_docker_build: mongodb_exporter_clone
	. ./env && \
	cd ./monitoring/mongodb_exporter \
	&& git checkout ${MONGODB_EXPORTER_VERSION} \
	&& make docker DOCKER_IMAGE_NAME=${MONGODB_EXPORTER_DOCKER_IMAGE_NAME} DOCKER_IMAGE_TAG=${MONGODB_EXPORTER_VERSION}

mongodb_exporter_push:
	. ./env && \
	docker push ${MONGODB_EXPORTER_DOCKER_IMAGE_NAME}:${MONGODB_EXPORTER_VERSION}


###
# cloudprober
###
cloudprober_build:
	. ./env && \
	cd ./monitoring/cloudprober && bash docker_build.sh

cloudprober_push:
	. ./env && \
	docker push $${USER_NAME}/cloudprober


###
# alertmanager
###
alertmanager_build:
	. ./env && \
	cd ./monitoring/alertmanager && bash docker_build.sh

alertmanager_push:
	. ./env && \
	docker push $${USER_NAME}/alertmanager



###
# grafana
###
grafana_build:
	. ./env && \
	cd ./monitoring/grafana && bash docker_build.sh

grafana_push:
	. ./env && . ./docker/.env && \
	docker push $${USER_NAME}/grafana:$${GRAFANA_VERSION}


###
# docker-compose
###
docker_compose_shell:
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose.yml -f docker-compose-monitoring.yml exec ${SERVICE} sh

docker_compose_logs:
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose.yml -f docker-compose-monitoring.yml logs -f ${SERVICE}

docker_compose_down:
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose.yml -f docker-compose-monitoring.yml down ${SERVICE}



###
# fluentd
###
fluentd_build:
	. ./env && \
	cd ./logging/fluentd && bash docker_build.sh

fluentd_push:
	. ./env && \
	docker push $${USER_NAME}/fluentd



###
# app down
###
down_app:
	cd docker \
	&& ../.venv/bin/docker-compose down

down_monitoring:
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose-monitoring.yml down

down_logging:
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose-logging.yml down


###
# run
###
run_app: variables
	cd docker \
	&& ../.venv/bin/docker-compose up -d

run_monitoring: variables
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose.yml -f docker-compose-monitoring.yml up -d

run_logging: variables
	cd docker \
	&& ../.venv/bin/docker-compose -f docker-compose-logging.yml up -d


run: run_app run_monitoring run_logging


###
# copy variables from examples, if needed
###
variables:
	cd ./                      && (test -f env || cp env.example env)
	cd docker                  && (test -f .env || cp .env.example .env)
	cd monitoring/alertmanager && (test -f env || cp env.example env)
