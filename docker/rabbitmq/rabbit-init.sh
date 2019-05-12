#!/bin/sh

# Create Rabbitmq user
( sleep 10 ; \
rabbitmqctl add_user $RABBITMQ_USER $RABBITMQ_PASSWORD ; \
rabbitmqctl set_user_tags $RABBITMQ_USER administrator ; \
rabbitmqctl set_permissions -p / $RABBITMQ_USER  ".*" ".*" ".*" ; \
echo "*** User '$RABBITMQ_USER' completed. ***" ; \
rabbitmqadmin declare exchange name=$RABBITMQ_EXCHANGE type=fanout ; \
echo "*** Exchange '$RABBITMQ_EXCHANGE' declared. ***"
rabbitmqadmin declare queue name=$RABBITMQ_QUEUE durable=true ; \
echo "*** Queue '$RABBITMQ_QUEUE' declared. ***"
) &

# $@ is used to pass arguments to the rabbitmq-server command.
# For example if you use it like this: docker run -d rabbitmq arg1 arg2,
# it will be as you run in the container rabbitmq-server arg1 arg2
rabbitmq-server $@
