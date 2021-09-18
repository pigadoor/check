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

#Третье задание
echo -e 'Третий пункт:'
chmod u+r magmar3/bidoof
cat magmar3/bidoof > surskit2_99 #chmod 004 bidoof -> chmod 404 bidoof
chmod u-r magmar3/bidoof

chmod u+r baltoy3/axew
cat baltoy3/axew >> surskit2_99 #chmod 060 axew -> chmod 460 axew
chmod u-r baltoy3/axew

chmod u+w baltoy3
cp rapidash4 baltoy3/axewrapidash #chmod 577 baltoy3 -> chmod 777 baltoy3
chmod u-w baltoy3

chmod u+r baltoy3/aggron
chmod u+r baltoy3/exploud
cp -r baltoy3 baltoy3/exploud 2> /dev/null #chmod 337 aggron -> chmod 737 aggron; chmod 335 exploud -> chmod 735 exploud
chmod u-r baltoy3/aggron
chmod u-r baltoy3/exploud

cp turtwig0 baltoy3/exploud

ln -s /home/s333420/lab0/turtwig0 magmar3/crobatturtwig

chmod u+w baltoy3
ln turtwig0 baltoy3/mudkipturtwig
chmod u-w baltoy3

ln -s oshawott3 Copy_78
echo -e 'Выполнено!\n'

#Четвертое задание
echo -e 'Четвертый пункт:'
touch /tmp/s333420_vivod1
cat baltoy3/mudkip baltoy3/axew magmar3/finneon magmar3/bidoof magmar3/crobat | wc -m > /tmp/s333420_vivod1
ls -Rlt | head -4 2>&1
cat -n ./m* ./*/m* | sort -r 2> /dev/null
cat -n baltoy3/mudkip baltoy3/axew magmar3/finneon magmar3/bidoof magmar3/crobat | grep -v 'She'
ls -Rltr h* | tail -4 2>&1
ls -1 magmar3 | sort
echo -e 'Выполнено!\n'

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
