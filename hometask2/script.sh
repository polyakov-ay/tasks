#!/bin/bash
if [ -d /tmp/tar/ ];
then
	rm -rf /tmp/tar/;
	mkdir /tmp/tar;
	echo "Директория /tmp/tar удалена и создана повторно";
else
	mkdir /tmp/tar;
	echo "Директория /tmp/tar успешно создана";
fi
cd /
cd /tmp/tar/
wget https://netcologne.dl.sourceforge.net/project/od1n/samples.tar.gz -O - | tar -xz
cd samples/
echo "файлов в архиве:"; ls | wc -l
