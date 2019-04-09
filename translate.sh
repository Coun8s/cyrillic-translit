#!/bin/bash
#Пример использования:
#30 02 *  *  * root /etc/squid/translate.sh < /var/log/squid/access.log > /var/log/squid/logtranslator/access.log	
#cron задача забирает тест с киррилицей из /var/log/squid/access.log и кладет текст с транслитом в /var/log/squid/logtranslator/access.log
sed \
-e 's/ё/yo/g' \
-e 's/Ё/Yo/g' \
-e 's/ж/zh/g' \
-e 's/Ж/Zh/g' \
-e 's/ц/ts/g' \
-e 's/Ц/Ts/g' \
-e 's/ч/ch/g' \
-e 's/Ч/Ch/g' \
-e 's/ш/sh/g' \
-e 's/Ш/Sh/g' \
-e 's/щ/shch/g' \
-e 's/Щ/Shch/g' \
-e 's/ю/yu/g' \
-e 's/Ю/Yu/g' \
-e 's/я/ya/g' \
-e 's/Я/Ya/g' \
-e "y/абвгдезийклмнопрстуфхъыьэ/abvgdezijklmnoprstufh'y'e/" \
-e "y/АБВГДЕЗИЙКЛМНОПРСТУФХЪЫЬЭ/ABVGDEZIJKLMNOPRSTUFH'Y'E/"
