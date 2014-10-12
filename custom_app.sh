apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "TeleService" ];then
        echo ">>> in custom_app for $apkBaseName to add some permissions for android 4.4.4"
	sed -i '/<original-package android:name="com.android.phone" \/>/a\<uses-permission android:name="android.permission.SET_PREFERRED_APPLICATIONS" \/>' $tempSmaliDir/AndroidManifest.xml

elif [ "$apkBaseName" = "Keyguard" ];then
        echo ">>> in custom_app for $apkBaseName to add some permissions for android 4.4.4"
	sed -i '/<uses-permission android:name="android.permission.VIBRATE" \/>/a\<uses-permission android:name="android.permission.ACCESS_KEYGUARD_SECURE_STORAGE" \/>' $tempSmaliDir/AndroidManifest.xml

fi

