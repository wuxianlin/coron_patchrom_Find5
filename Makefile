# Makefile Reference
# Please use this file as the project Makefile reference

##############################################################################
# Default DALVIK_VM_BUILD setting is 27
# Only used for odex, if not, ignore...
#-----------------------------------------------------------------------------
DALVIK_VM_BUILD := 27

##############################################################################
# Default DENSITY setting is hdpi
# this depends on the device's resolution
#-----------------------------------------------------------------------------
DENSITY := xxhdpi

##############################################################################
# Default RESOLUTION setting is nothing
# this used to config the bootanimation
#-----------------------------------------------------------------------------
RESOLUTION := 1080x1920

##############################################################################
# Default MINI_SYSTEM is false
# Cut the useless resource or not
# 	if MINI_SYSTEM is true, it will cost much more time to build, and of course
# the size of system size will be reduced.
#-----------------------------------------------------------------------------
MINI_SYSTEM := false

##############################################################################
# Defaul NO_SYSTEM_IMG is true
# If you want generate an system.img, set it to false
#-----------------------------------------------------------------------------
NO_SYSTEM_IMG := true

##############################################################################
# Default SIGN_OTA is true
# If your pc's memory is lower than 2GB, you better set it to false
#-----------------------------------------------------------------------------
SIGN_OTA := true

##############################################################################
# customize weather use prebuilt image or pack from BOOT/RECOVERY directory
# Support Values:
# vendor_modify_images := boot recovery
# boot/recovery, pack boot.img/recovery.img from vendor/BOOT / vendor/RECOVERY
# NULL, check boot.img/recovery.img in project root directory, if it exists,
# use a prebuilt boot.img/recovery.img, if not, nothing to do
#-----------------------------------------------------------------------------
# vendor_modify_images := boot recovery

##############################################################################
# customize weather add assert in update-script of ota package
# set false if you don't need this assert fuction
#-----------------------------------------------------------------------------
# recovery_ota_assert := false

##############################################################################
# Directorys which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_dirs := app vendor/operator/app

##############################################################################
# Files which you want to remove in vendor directory
#-----------------------------------------------------------------------------
# vendor_remove_files := bin/zchgd

##############################################################################
# Vendor apks you want to use
#-----------------------------------------------------------------------------
vendor_saved_apps := Bluetooth BluetoothExt

##############################################################################
# Apks build from current project root directory
# if the apk is decode from baidu:
# 1, check if the apk in BAIDU_UPDATE_RES_APPS (you can see it in build/configs/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's apk to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_apps := FMRadio
# you need decode FMRadio.apk to the project directory (use apktool d FMRadio.apk) first
# then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
# vendor_modify_apps := FMRadio

##############################################################################
# Jars build from current project root directory
# if the jar is decode from baidu:
# 1, check if the jar in BAIDU_UPDATE_RES_APPS (you can see it in build/configs/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's jar to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_jars := android.policy
# you need decode android.policy.jar to the project directory (use apktool d android.policy.jar) first
# then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := framework framework2 pm services telephony-common

##############################################################################
# Directorys which you want to saved in baidu directory
#-----------------------------------------------------------------------------
# baidu_saved_dirs := media/audio/ui

##############################################################################
# Files which you want to saved in baidu directory
#-----------------------------------------------------------------------------
# baidu_saved_files := lib/libwebcore.so

##############################################################################
# baidu_remove_apps: those baidu apk you want remove 
#-----------------------------------------------------------------------------
# baidu_remove_apps := BaiduUserFeedback.apk

##############################################################################
# baidu_modify_apps: which base the baidu's apk
# just override the res, append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_apps := Phone

##############################################################################
# baidu_modify_jars: which base the baidu's jar
# just append *.smali.part
#-----------------------------------------------------------------------------
# baidu_modify_jars := android.policy

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------

# The property decide whether hide the soft mainkeys.
# If 1, hide the soft mainkeys. If 0, display the soft mainkeys.
# You should configure the property according to your device.
# override_property += \
#     qemu.hw.mainkeys=0

# The property decide whether the device support the phone book index in the sim card.
# If true, support the phone book index. If false, don't support the phone book index.
# You should configure the property according to your device.
# In general, most devices support the phone book index, so the property default value is true.
# Becareful about the initial number of index, some devices start from 0, while others start from 1.
# override_property += \
#     phone_book_index_supported=true

# The property decide your ID on the backend server which statistical data for your device.
# You should configure the property according to your ID, ie, replace "Coron" with your ID.
# override_property += \
#    ro.baidu.romer=Coron

##############################################################################
# remove_property: this property will remove from the build.prop
#-----------------------------------------------------------------------------
# remove_property += \
#     dev.defaultwallpaper


##############################################################################
# The FORMAT_PARAM_NUM is used to define format function's parameters number,
# which was in the META-INF/com/google/android/updater-script.
#
# If FORMAT_PARAM_NUM is 4, the format function may like this:
# format("ext4", "EMMC", "/dev/block/platform/hi_mci.1/by-name/system", "0");
#
# Otherwise if FORMAT_PARAM_NUM is 5:
# format("ext4", "EMMC", "/dev/block/platform/hi_mci.1/by-name/system", "0", "/system");
#-----------------------------------------------------------------------------
# FORMAT_PARAM_NUM := 4


include $(PORT_BUILD)/main.mk
include $(PORT_BUILD)/autopatch.mk
