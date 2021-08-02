function sudo
	if test -z "$argv"
		echo "will run sudo $history[1]"
		read a
		eval command sudo $history[1]
	else
		eval command sudo $argv
	end
end
