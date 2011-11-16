echo '<data>' > example.xml
sudo cat /var/log/syslog | awk '{print "<event start=\""$1,$2,"2011",$3,"GMT +0800\"","end=\""$1,$2,"2011",$3,"GMT +0800\"","title=\""$4,$5"\">"$0"</event>"}' | sed s/\&/\&amp\;/g >> example.xml
echo '</data>' >> example.xml
