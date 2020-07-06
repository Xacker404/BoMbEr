#!/bin/bash
clear
echo "--------------------"
echo "|     Кто ты ?     |"
echo "|------------------|"
echo "| 1. Termux        |"
echo "| 2. Другой Unix   |"
echo "| 3. iSH           |"
echo "|                  |"
echo "| Введите 1/2/3:   |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install dos2unix
	pip install requests colorama proxyscrape
	cp ~/BoMbEr/BoMbEr.py /data/data/com.termux/files/usr/bin/BoMbEr
	dos2unix /data/data/com.termux/files/usr/bin/BoMbEr
	chmod -R 777 ~/BoMbEr
	chmod 777 /data/data/com.termux/files/usr/bin/BoMbEr
	BoMbEr
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/BoMbEr/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests colorama proxyscrape
			cp ~/BoMbEr/spammer.py /usr/bin/BoMbEr
			dos2unix /usr/bin/BoMbEr
			chmod 777 /usr/bin/BoMbEr
			chmod -R 777 ~/BoMbEr
			BoMbEr
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			pip3 install proxyscrape
			cp ~/BoMbEr/spammer.py /usr/bin/BoMbEr
			dos2unix /usr/bin/BoMbEr
			chmod 777 /usr/bin/BoMbEr
			BoMbEr
		else
			echo "Некорректный ввод"
		fi
	fi
fi
