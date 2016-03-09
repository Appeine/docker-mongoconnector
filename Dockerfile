FROM python:3.4.4
MAINTAINER quint@appeine.com

ENV DEBIAN_FRONTEND noninteractive
ENV TZ UTC

# Installing Mongo Connector which will connect MongoDB and Elasticsearch
RUN pip install --upgrade pip && pip install mongo-connector==2.1

CMD mongo-connector -m $MONGO_URL -t $ELASTICSEARCH_URL -d elastic_doc_manager --namespace-set $NAMESPACES --stdout
