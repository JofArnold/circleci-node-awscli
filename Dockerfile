FROM cimg/python:3.9.6-node

RUN pip install awscli --upgrade --user

ENV PATH="/home/circleci/.local/bin:${PATH}"
