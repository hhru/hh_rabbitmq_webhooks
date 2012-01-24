RELEASABLE:=true
DEPS:=rabbitmq-server rabbitmq-erlang-client
RETAIN_ORIGINAL_VERSION:=true

define package_rules

$(PACKAGE_DIR)+dist:: 
	cp deps/lhttpc/lhttpc.ez dist/

endef
