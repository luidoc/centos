FROM quay.io/centos/centos:stream8
RUN dnf update -y && \
dnf install -y wget && \
dnf -y install leptonica tesseract && \
dnf install -y java-11-openjdk && \
dnf clean all

# Define working directory.
WORKDIR /tmp

# Define default command.
CMD ["/bin/sleep", "3650d"]
