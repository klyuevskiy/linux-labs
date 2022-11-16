#!/bin/bash

while [ "$choice" != "G" ]; do
    echo "(A) Add"
    echo "(B) Subtract"
    echo "(C) Multiply"
    echo "(D) Divide"
    echo "(E) Modulus"
    echo "(F) Exponentiation"
    echo "(G) Exit"

    echo "Your choice:"
    read choice
    choice=$(echo $choice | tr '[:lower:]' '[:upper:]')

    if [[ "$choice" =~ ^[A-F] ]]; then
        echo "Input two numbers:"
        read val1
        read val2
    fi

    case "$choice" in
    "A")
        echo "Add: $(($val1 + $val2))"
        ;;
    "B")
        echo "Subtract: $(($val1 - $val2))"
        ;;
    "C")
        echo "Multiply: $(($val1 * $val2))"
        ;;
    "D")
        echo "Divide: $(($val1 / $val2))"
        ;;
    "E")
        echo "Modulus: $(($val1 % $val2))"
        ;;
    "F")
        echo "Exponentiation: $(($val1 ** $val2))"
        ;;
    esac
done

exit 0
