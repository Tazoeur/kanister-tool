FROM ghcr.io/kanisterio/kanister-tools

RUN microdnf install tar

CMD ["bash"]
