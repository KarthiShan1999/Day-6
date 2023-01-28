#!/bin/bash

check_palindrome() {
  local number1=$1
  local number2=$2

  if [[ "$number1" == $(echo "$number1" | rev) ]] && [[ "$number2" == $(echo "$number2" | rev) ]]; then
    echo "Both numbers are palindromes."
  else
    echo "Both numbers are not palindromes."
  fi
}

read -p "Enter the first number: " number1
read -p "Enter the second number: " number2
check_palindrome "$number1" "$number2"
