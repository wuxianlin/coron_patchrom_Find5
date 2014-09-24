apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "TeleService" ];then
        echo ">>> in custom_app for $apkBaseName to add some permissions for android 4.4"
	sed -i '/<original-package android:name="com.android.phone" \/>/a\<uses-permission android:name="android.permission.RECEIVE_SMS" \/>\n\<uses-permission android:name="android.permission.SET_PREFERRED_APPLICATIONS" \/>' $tempSmaliDir/AndroidManifest.xml

fi

