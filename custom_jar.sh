
jarBaseName=$1
tempSmaliDir=$2

if [ "$jarBaseName" = "android.policy" ];then
	echo ">>> in custom_jar for android.policy"
        echo ">>> overlay some smali to remove cm gloabl action"
	rm -rf $tempSmaliDir/smali/com/android/internal/policy/impl/GlobalActions*
	cp -rf overlay/android.policy/smali/* $tempSmaliDir/smali/

fi

