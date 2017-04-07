# Checks a reads and downloads a websites robot.txt file
#Created 07Apr17 
#Last Modified 07Apr17
dialog --title "blandSystems_rtc" --infobox "Bland Systems Robots.txt Checker"   7 40;sleep 1
url=$(dialog --title "blandSystems_rtc" --inputbox "Enter URL" 7 40 --output-fd 1)  
dialog --title "blandSystems_rtc" --infobox "Reading robots.txt for $url\nPlease wait" 7 40;sleep 1
curl  -A "blandSystemsBot_rtc using curl/7.47.0 blandsystems.wordpress.com/bots" $url/robots.txt > robotFile
dialog --title "blandSystems_rtc" --textbox robotFile 20 70
rm robotFile 
clear
