answer="y"
echo "author: Repjuk Natalya"
echo "title: script for working with archives"
echo "description: zips or unzips a directory"

while [ "$answer" != "n" ]
do
	echo "Archive(1) or unzip (2) the file? Enter the required number"
	read number
	while [ "$number" != "1" ] && [ "$number" != "2" ]
	do
		echo 'Type "1" or "2"'
		read number
	done

	if [ "$number" = "1" ]; then
	echo "Enter the name of the file to archive:"
	read name
	echo "Enter a name for the archive"
	read archive
	tar -cvf $archive.tar $name
	else
	echo "Enter the name of the archive:"
	read name_archive
	tar -xvf $name_archive.tar
	fi

	echo "Continue? y/n"
	read answer
	while [ "$answer" != "y" ] && [ "$answer" != "n" ]
	do
		echo 'Type "n" or "y"'
		read answer
	done
done
