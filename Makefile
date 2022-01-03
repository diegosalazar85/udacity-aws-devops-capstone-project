install:
	# install hadolint
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.8.0/hadolint-Linux-x86_64 &&\
            chmod +x /bin/hadolint

lint:
	# This is linter for Dockerfiles
	hadolint .circleci/ansible/roles/build-docker-image/files/Dockerfile

all: install lint
