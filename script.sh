#!/bin/bash

#Первое задание
echo -e 'Первый пункт:'
mkdir lab0
cd lab0
mkdir baltoy3
cd baltoy3
echo -e 'Живет  Marsh' > mudkip
echo -e 'Тип покемона  Dragon\nNONE' > axew
mkdir aggron
mkdir exploud
mkdir drilbur
cd ..
mkdir magmar3
cd magmar3
mkdir honchkrow
echo -e 'Способности  Torrent Swift Swim Storm\nDrain' > finneon
echo -e 'Развитые способности  Moody' > bidoof
echo -e 'Живет\nCave' > crobat
cd ..
mkdir oshawott3
cd oshawott3
echo -e 'Тип диеты  Omnivore' > hitmontop
mkdir karrablast
echo -e 'Способности  Blaze\nMind Mold Sheer Force Reckless' > darmanitan
cd ..
echo -e 'Возможности  Overland=18\nJump=5 Power=4 Intelligency=4 Egg Warmer=0 Firestarter=0 Glow=0\nHeater=0 Sinker=0' > rapidash4
echo -e 'Ходы  Bug Bite Double-Edge Giga Drain Icy\nWind Mud-Slap Signal Beam Sleep Talk Snore String Shot Swift Water\nPulse' > surskit2
echo -e 'Развитые способности  Shell Armor' > turtwig0
echo -e 'Выполнено!\n'
echo -e '---------------------------------------------------------------------------------------------------------\n'

#Второе задание
echo -e 'Второй пункт:'
chmod 577 baltoy3
chmod 640 baltoy3/mudkip
chmod 060 baltoy3/axew
chmod 337 baltoy3/aggron
chmod 335 baltoy3/exploud
chmod 764 baltoy3/drilbur
chmod 755 magmar3
chmod 733 magmar3/honchkrow
chmod 046 magmar3/finneon
chmod 004 magmar3/bidoof
chmod 064 magmar3/crobat
chmod a=rwx oshawott3
chmod 620 oshawott3/hitmontop
chmod 576 oshawott3/karrablast
chmod 060 oshawott3/darmanitan
chmod 624 rapidash4
chmod 440 surskit2
chmod 660 turtwig0
echo -e 'Выполнено!\n'
echo -e '---------------------------------------------------------------------------------------------------------\n'

#Третье задание
echo -e 'Третий пункт:'

#Объеденить содержимое файлов lab0/magmar3/bidoof, lab0/baltoy3/axew, в новый файл lab0/surskit2_99
chmod u+r magmar3/bidoof
cat magmar3/bidoof > surskit2_99 #chmod 004 bidoof -> chmod 404 bidoof
chmod u-r magmar3/bidoof

chmod u+r baltoy3/axew
cat baltoy3/axew >> surskit2_99 #chmod 060 axew -> chmod 460 axew
chmod u-r baltoy3/axew

#Скопировать содержимое файла rapidash4 в новый файл lab0/baltoy3/axewrapidash
chmod u+w baltoy3
cat rapidash4 > baltoy3/axewrapidash #chmod 577 baltoy3 -> chmod 777 baltoy3
chmod u-w baltoy3

#Скопировать рекурсивно директорию baltoy3 в директорию lab0/baltoy3/exploud
chmod u+r baltoy3/aggron
chmod u+r baltoy3/exploud
cp -r baltoy3 baltoy3/exploud 2> /dev/null #chmod 337 aggron -> chmod 737 aggron; chmod 335 exploud -> chmod 735 exploud
chmod u-r baltoy3/aggron
chmod u-r baltoy3/exploud

#Скопировать файл turtwig0 в директорию lab0/baltoy3/exploud
cp turtwig0 baltoy3/exploud

#Создать символическую ссылку для файла turtwig0 с именем lab0/magmar3/crobatturtwig
ln -s /home/s333420/lab0/turtwig0 magmar3/crobatturtwig

#Создать жесткую ссылку для файла turtwig0 с именем lab0/baltoy3/mudkipturtwig
chmod u+w baltoy3
ln turtwig0 baltoy3/mudkipturtwig
chmod u-w baltoy3

#Создать символическую ссылку c именем Copy_78 на директорию oshawott3 в каталоге lab0
ln -s oshawott3 Copy_78

#  ls -lR
#  .:
#  total 8
#  dr-xrwxrwx   5 s333420  studs          9 сент. 29 04:04 baltoy3
#  lrwxrwxrwx   1 s333420  studs          9 сент. 29 04:04 Copy_78 -> oshawott3
#  drwxr-xr-x   3 s333420  studs          7 сент. 29 04:04 magmar3
#  drwxrwxrwx   3 s333420  studs          5 сент. 29 04:04 oshawott3
#  -rw--w-r--   1 s333420  studs        118 сент. 29 04:04 rapidash4
#  -r--r-----   1 s333420  studs        119 сент. 29 04:04 surskit2
#  -rw-r--r--   1 s333420  studs         84 сент. 29 04:04 surskit2_99
#  -rw-rw----   2 s333420  studs         53 сент. 29 04:04 turtwig0
#  
#  ./baltoy3:
#  total 7
#  d-wx-wxrwx   2 s333420  studs          2 сент. 29 04:04 aggron
#  ----rw----   1 s333420  studs         37 сент. 29 04:04 axew
#  -rw-r--r--   1 s333420  studs        118 сент. 29 04:04 axewrapidash
#  drwxrw-r--   2 s333420  studs          2 сент. 29 04:04 drilbur
#  d-wx-wxr-x   3 s333420  studs          4 сент. 29 04:04 exploud
#  -rw-r-----   1 s333420  studs         18 сент. 29 04:04 mudkip
#  -rw-rw----   2 s333420  studs         53 сент. 29 04:04 mudkipturtwig
#  
#  ./baltoy3/aggron:
#  ./baltoy3/aggron: Permission denied
#  total 7
#  
#  ./baltoy3/drilbur:
#  total 0
#  
#  ./baltoy3/exploud:
#  ./baltoy3/exploud: Permission denied
#  total 0
#  
#  ./magmar3:
#  total 5
#  -------r--   1 s333420  studs         47 сент. 29 04:04 bidoof
#  ----rw-r--   1 s333420  studs         16 сент. 29 04:04 crobat
#  lrwxrwxrwx   1 s333420  studs         27 сент. 29 04:04 crobatturtwig -> /home/s333420/lab0/turtwig0
#  ----r--rw-   1 s333420  studs         55 сент. 29 04:04 finneon
#  drwx-wx-wx   2 s333420  studs          2 сент. 29 04:04 honchkrow
#  
#  ./magmar3/honchkrow:
#  total 0
#  
#  ./oshawott3:
#  total 3
#  ----rw----   1 s333420  studs         61 сент. 29 04:04 darmanitan
#  -rw--w----   1 s333420  studs         28 сент. 29 04:04 hitmontop
#  dr-xrwxrw-   2 s333420  studs          2 сент. 29 04:04 karrablast
#  
#  ./oshawott3/karrablast:
#  total 0

echo -e 'Выполнено!\n'
echo -e '---------------------------------------------------------------------------------------------------------\n'

#Четвертое задание
echo -e 'Четвертый пункт:'

#Подсчитать количество символов содержимого файлов: mudkip, axew, finneon, bidoof, crobat, результат записать в файл в директории /tmp, ошибки доступа не подавлять и не перенаправлять
touch /tmp/s333420_vivod1
cat baltoy3/mudkip baltoy3/axew magmar3/finneon magmar3/bidoof magmar3/crobat | wc -m > /tmp/s333420_vivod1

#Вывести четыре первых элемента рекурсивного списка имен и атрибутов файлов в директории lab0, список отсортировать по убыванию даты модификации файла, добавить вывод ошибок доступа в стандартный поток вывода
ls -Rlt | head -4 2>&1

#Рекурсивно вывести содержимое файлов с номерами строк из директории lab0, имя которых начинается на 'm', строки отсортировать по имени z->a, подавить вывод ошибок доступа
cat -n ./m* ./*/m* | sort -r 2> /dev/null

#Вывести содержимое файлов: mudkip, axew, finneon, bidoof, crobat с номерами строк, исключить строки, содержащие "She", ошибки доступа не подавлять и не перенаправлять
cat -n baltoy3/mudkip baltoy3/axew magmar3/finneon magmar3/bidoof magmar3/crobat | grep -v 'She'

#Вывести четыре последних элемента рекурсивного списка имен и атрибутов файлов в директории lab0, начинающихся на символ 'h', список отсортировать по возрастанию даты модификации файла, добавить вывод ошибок доступа в стандартный поток вывода
ls -Rltr h* | tail -4 2>&1

#Вывести список имен файлов в директории magmar3, список отсортировать по имени a->z, ошибки доступа не подавлять и не перенаправлять
ls -1 magmar3 | sort

echo -e 'Выполнено!\n'
echo -e '---------------------------------------------------------------------------------------------------------\n'

#Пятое задание
echo -e 'Пятый пункт:'
rm -f turtwig0
rm -f magmar3/finneon
rm -f magmar3/crobatturtw*
rm -f baltoy3/mudkipturtw*
rm -rf magmar3
chmod u+r baltoy3/exploud
chmod u+w baltoy3/exploud/baltoy3
rm -rf baltoy3/exploud
echo -e 'Выполнено!'
