#!/bin/bash

is_prime() {
  local number=$1
  for ((i = 2; i <= $((number/2)); i++)); do
    if [[ $((number%i)) -eq 0 ]]; then
      echo "False"
      return
    fi
  done
  echo "True"
}

get_palindrome() {
  local number=$1
  echo $(echo $number | rev)
}

read -p "Enter a number: " number

if [[ $(is_prime $number) == "True" ]]; then
  palindrome=$(get_palindrome $number)
  echo "The palindrome of $number is $palindrome"
  if [[ $(is_prime $palindrome) == "True" ]]; then
    echo "$palindrome is also a prime number."
  else
    echo "$palindrome is not a prime number."
  fi
else
  echo "$number is not a prime number."
fi
