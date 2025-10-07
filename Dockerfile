FROM alpine:3.22

ENV packages="\
	tar \
	curl \
	bash \
	"

RUN apk update && apk add $packages

RUN curl https://raw.githubusercontent.com/kanisterio/kanister/master/scripts/get.sh | sed 's/shasum -a 256/sha256sum/g; s/"shasum"/sha256sum/g' | bash
CMD ["bash"]
