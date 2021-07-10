FROM cimg/python:3.9.6-node

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN sudo ./aws/install

ENV PATH="/home/circleci/.local/bin:${PATH}"
