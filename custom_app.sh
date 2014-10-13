apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "TeleService" ];then
        echo ">>> in custom_app for $apkBaseName to add some permissions for android 4.4.4"
	sed -i '/<original-package android:name="com.android.phone" \/>/a\<uses-permission android:name="android.permission.SET_PREFERRED_APPLICATIONS" \/>' $tempSmaliDir/AndroidManifest.xml
        echo ">>> in custom_app for $apkBaseName to fix Voice calling not supported"
	sed -i -e '/sput-boolean v1, Lcom\/android\/phone\/PhoneGlobals;->sVoiceCapable:Z/ i\    const/4 v1, 0x1\n' $tempSmaliDir/smali/com/android/phone/PhoneGlobals.smali

elif [ "$apkBaseName" = "Keyguard" ];then
        echo ">>> in custom_app for $apkBaseName to add some permissions for android 4.4.4"
	sed -i '/<uses-permission android:name="android.permission.VIBRATE" \/>/a\<uses-permission android:name="android.permission.ACCESS_KEYGUARD_SECURE_STORAGE" \/>' $tempSmaliDir/AndroidManifest.xml

elif [ "$apkBaseName" = "Contacts" ];then
        echo ">>> in custom_app for $apkBaseName to add some permissions for android 4.4.4"
	sed -i '/<original-package android:name="com.android.contacts" \/>/a\<uses-permission android:name="android.permission.SET_PREFERRED_APPLICATIONS" \/>' $tempSmaliDir/AndroidManifest.xml

elif [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"

    echo ">>> add stock settings"
    sed -i '/manufacturer_settings/d' $tempSmaliDir/res/xml/settings_headers.xml
    sed -i '/com.android.settings.users.UserSettings/r Settings/settings_headers.xml.part' $tempSmaliDir/res/xml/settings_headers.xml

fi

