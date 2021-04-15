sudo netstat -lpn |grep :8080

if [[ $? -eq 1 ]]; then
	$e = "/usr/bin/nohup /home/vasya/scripts/run_build.sh > /dev/null 2>&1 &";
	shell_exec("$e");
	echo "Server doesn't work"
	echo "Run server?[y/n]"
	read COMM
	if [[ "$COMM" == "y" ]]; then
		cd "/home/user/Документы/apache-tomcat-10.0.4/bin"
		./startup.sh
		xdg-open http://localhost:8080/Lab1_war/
	fi
if ($handle = opendir('.')) {
    echo '<table width="2" border="2" cellspacing="2" cellpadding="3">';
    while (false !== ($file = readdir($handle))) {
        if ($file[0] == '.') {
            continue; // skip dot-files
        }
        if (in_array($file, $bad_files)) {
            continue; // skip 'bad' files
        }
        if (is_dir($file)) {
            $file .= '/';
        }
        echo "<tr><td><a href=\"$file\">$file</a></td></tr>";
    }
    echo '</table>';
    closedir($handle);
} else {
    echo 'Error';
}

fi
