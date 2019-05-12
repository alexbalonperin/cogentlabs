FROM rabbitmq:3.6.11-management-alpine

MAINTAINER <abalaonperin1@gmail.com>

ENV RABBITMQ_USER alex
ENV RABBITMQ_PASSWORD password
ENV RABBITMQ_EXCHANGE cogentlabs
ENV RABBITMQ_QUEUE images

ADD rabbit-init.sh /init.sh
ADD rabbitmqadmin /bin/rabbitmqadmin

RUN apk --no-cache --update-cache add python

# Define default command
CMD ["/init.sh"]
