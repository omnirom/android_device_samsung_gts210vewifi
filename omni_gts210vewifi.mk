$(call inherit-product, device/samsung/gts210vewifi/full_gts210vewifi.mk)

# Since N there are some troubles with keymaster. Prebuilt keymaster can cause
# problems in some cases (i.e. TTLS EAP WiFi connections) and some other cases.
# BUT building keymaster from source breaks encryption. So this is ONLY for those
# people that need this.
#
# This should NEVER be in official weekly builds !!!.
TARGET_USES_SOURCEBUILD_KEYMASTER := true

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/omni/config/common_tablet.mk)

PRODUCT_NAME := omni_gts210vewifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_DEVICE := gts210vewifi
PRODUCT_MODEL := SM-T813

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gts210vewifixx \
    BUILD_FINGERPRINT=samsung/gts210vewifixx/gts210vewifi:6.0.1/MMB29M/T813XXU2APK6:user/release-keys \
    PRIVATE_BUILD_DESC="gts210vewifixx-user 6.0.1 MMB29M T813XXU2APK6 release-keys"
