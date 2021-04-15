#!/bin/bash
DATE=`date -I`
echo "Время создания файла: $(date +"%Y%m%d %H:%M")" > $DATE.txt

echo "Введите дату в формате 15 DEC 2021"
read USER_DATE
OUT_DATE=`date -d "$USER_DATE"`
echo "Время, введенное пользователем: $OUT_DATE" >> $DATE.txt

echo "Время проведения операции записано в текстовый файл"