#!/bin/bash

# #15 Считать вещественное число с консоли (с помощью read)
#и заменить этим числом все значения координаты Y, меньшие 0, в исходном файле.

echo "input real number"
read y

if [[ !("$y" =~ ^[-]?[0-9]+([.][0-9]+)?$) ]]; then
    echo "invalid input"
    exit
fi

echo "input:"
cat atom.xyz

echo "output:"

awk -v y=$y '{
if ($3 < 0){
    $3 = y
}
print $0
}
' atom.xyz
