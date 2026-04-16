# Different TWRP/AOSP bases place product core files in different paths.
ifneq (,$(wildcard $(SRC_TARGET_DIR)/product/core_32_bit.mk))
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_32_bit.mk)
else ifneq (,$(wildcard build/make/target/product/core_32_bit.mk))
$(call inherit-product, build/make/target/product/core_32_bit.mk)
else ifneq (,$(wildcard build/target/product/core_32_bit.mk))
$(call inherit-product, build/target/product/core_32_bit.mk)
else ifneq (,$(wildcard $(SRC_TARGET_DIR)/product/core_minimal.mk))
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
else ifneq (,$(wildcard build/make/target/product/core_minimal.mk))
$(call inherit-product, build/make/target/product/core_minimal.mk)
else ifneq (,$(wildcard build/target/product/core_minimal.mk))
$(call inherit-product, build/target/product/core_minimal.mk)
else
$(error Could not find core product makefile in this source tree)
endif

$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := pocketalks
PRODUCT_NAME := omni_pocketalks
PRODUCT_BRAND := pocketalk
PRODUCT_MODEL := Pocketalk S
PRODUCT_MANUFACTURER := pocketalk

PRODUCT_RELEASE_NAME := PocketalkS
