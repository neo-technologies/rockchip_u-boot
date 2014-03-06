LOCAL_PATH := logos/charge

define all-images-under
    $(shell find $(LOCAL_PATH)/$(1) -name "*.bmp" -and -not -name ".*"|sort)
endef

FAIL_IMAGE := $(LOCAL_PATH)/fail.bmp

LEVEL_0_IMAGES := \
	$(call all-images-under,level_0)

LEVEL_1_IMAGES := \
	$(call all-images-under,level_1)

LEVEL_2_IMAGES := \
	$(call all-images-under,level_2)

LEVEL_3_IMAGES := \
	$(call all-images-under,level_3)

LEVEL_4_IMAGES := \
	$(call all-images-under,level_4)

LEVEL_0 := 1
LEVEL_1 := 3
LEVEL_2 := 36
LEVEL_3 := 71
LEVEL_4 := 100

LEVEL_OPT := -level=
BMP_IMAGES := \
	$(FAIL_IMAGE) \
	$(LEVEL_OPT)$(LEVEL_0) \
	$(LEVEL_0_IMAGES) \
	$(LEVEL_OPT)$(LEVEL_1) \
	$(LEVEL_1_IMAGES) \
	$(LEVEL_OPT)$(LEVEL_2) \
	$(LEVEL_2_IMAGES) \
	$(LEVEL_OPT)$(LEVEL_3) \
	$(LEVEL_3_IMAGES) \
	$(LEVEL_OPT)$(LEVEL_4) \
	$(LEVEL_4_IMAGES) \

.PHONY : \
$(LEVEL_OPT)$(LEVEL_0) \
$(LEVEL_OPT)$(LEVEL_1) \
$(LEVEL_OPT)$(LEVEL_2) \
$(LEVEL_OPT)$(LEVEL_3) \
$(LEVEL_OPT)$(LEVEL_4) \
