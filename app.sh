for apps in /var/mobile/Containers/Data/Application/*; do
if [ -d "$apps" ];then

for preference in $apps/Library/Preferences/*; do
if [ -f "$preference" ];then
if [[ $preference =~ "plist" ]];then
echo "$preference";
fi
fi
done

fi
done
