PACKAGE=hh_rabbitmq_webhooks
APPNAME=hh_rabbitmq_webhooks
DEPS=rabbitmq-server rabbitmq-erlang-client
INTERNAL_DEPS=lhttpc

include ../umbrella.mk
