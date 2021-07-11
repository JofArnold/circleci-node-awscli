FROM cimg/python:3.9.6-node

ENV GLIBC_VER=2.31-r0

# install glibc compatibility for Ubuntu along with AWS cli v2
# See https://github.com/aws/aws-cli/issues/4685#issuecomment-615872019
RUN sudo apt-get install -y binutils curl
RUN sudo apt-get update -y
RUN sudo apt-get install -y build-essential
RUN curl -sL https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip
RUN unzip awscliv2.zip
RUN sudo aws/install
RUN rm -rf awscliv2.zip aws
RUN echo "AWS Cli V2 installed: $(aws --version)"

ENV PATH="/home/circleci/.local/bin:${PATH}"
