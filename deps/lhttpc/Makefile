GIT_UPSTREAM=https://github.com/oscarh/lhttpc.git
GIT_REVISION=1cd58a679bf8e0103a88869d92495d6c05807d7f

EBIN_DIR=ebin
INCLUDE_DIR=include

LIB_PACKAGE=lhttpc
LIB_PACKAGE_DIR=$(LIB_PACKAGE)
LIB_PACKAGE_NAME=$(LIB_PACKAGE).ez

CHECKOUT_DIR=$(LIB_PACKAGE_DIR)-git

TARGETS=$(LIB_PACKAGE_NAME)

all: $(TARGETS)

clean:
	rm -rf $(EBIN_DIR)
	rm -rf $(INCLUDE_DIR)
	rm -rf $(LIB_PACKAGE_DIR) $(TARGETS)

distclean: clean
	rm -rf $(CHECKOUT_DIR)

$(LIB_PACKAGE_DIR): $(CHECKOUT_DIR)
	cp -r $< $@

$(CHECKOUT_DIR):
	git clone $(GIT_UPSTREAM) $@
	(cd $@; git checkout $(GIT_REVISION))

%.ez: $(LIB_PACKAGE_DIR)
	$(MAKE) -C $(LIB_PACKAGE_DIR) clean all
	rm -rf $(EBIN_DIR) $(INCLUDE_DIR)
	cp -r $(LIB_PACKAGE_DIR)/ebin $(EBIN_DIR)
	zip $(LIB_PACKAGE_NAME) $(LIB_PACKAGE_DIR)/
	zip -r $(LIB_PACKAGE_NAME) $(LIB_PACKAGE_DIR)/$(EBIN_DIR)/
