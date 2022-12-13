#!/bin/bash

start=0
delay=$1
end=$2

echo "Запущен таймер на $end секунд с выводом сообщения каждые $delay секунд"

while [ "$start" -lt "$end" ]; do
    echo "Прошло $start секунд. Осталось $(($end - $start)) секунд"
    if [ "$(($start + $delay))" -gt "$end" ]; then
        let delay=$end-$start
    fi
    sleep $delay
    let start=$start+$delay
done

echo "Конец. Прошло $end секунд"

exit 0
