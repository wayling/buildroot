HELLOWORLD_VERSION:= ch3.1-start
HELLOWORLD_SITE:= /home/wayling/example/$(HELLOWORLD_VERSION)
HELLOWORLD_SITE_METHOD:=local
HELLOWORLD_INSTALL_TARGET:=YES

define HELLOWORLD_BUILD_CMDS
        $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D) all
endef

define HELLOWORLD_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/helloworld $(TARGET_DIR)/root
endef

$(eval $(generic-package))
