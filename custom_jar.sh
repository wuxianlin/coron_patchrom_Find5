
jarBaseName=$1
tempSmaliDir=$2

if [ "$jarBaseName" = "framework" ];then
	echo ">>> in custom_jar for framework"
        echo ">>> overlay some smali to remove cm theme"
	cp -rf overlay/framework/smali/* $tempSmaliDir/smali/

fi

