SUBDIRS = php

all: $(SUBDIRS) build

$(SUBDIRS):
	$(MAKE) -C $@

build: docker-compose.yml
	docker-machine ip default || (docker-machine start default)
	docker-compose up -d

.PHONY: all $(SUBDIRS)
