
build_tag:
	docker build \
	--build-arg KOLIBRI_TAG=$(KOLIBRI_TAG) \
	--build-arg URL='tags/v' \
	--build-arg VCS_REF=`git rev-parse --short HEAD` \
	--build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
	-t ulmefors/kolibri:$(KOLIBRI_TAG) -f Dockerfile .

build_latest:
	docker build \
	--build-arg KOLIBRI_TAG=latest \
	--build-arg VCS_REF=`git rev-parse --short HEAD` \
	--build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
	-t ulmefors/kolibri:latest -f Dockerfile .

