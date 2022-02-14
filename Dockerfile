FROM centos:latest
RUN yum update -y && \
yum install -y wget && \
RUN yum -y install leptonica tesseract && \
yum install -y java-11-openjdk && \
yum clean all

# Define working directory.
WORKDIR /tmp

# Define default command.
CMD ["bash"]
