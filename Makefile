default:
	docker build --rm=true --force-rm=true -t whitebox/ubuntu-dumb-init .
nocache:
	docker build --rm=true --force-rm=true --no-cache -t whitebox/ubuntu-dumb-init .
