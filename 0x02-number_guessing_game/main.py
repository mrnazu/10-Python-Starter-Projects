#!/usr/bin/env python3

from random import randint

lower_num = 1
higher_num = 10

random_number: int = randint(lower_num, higher_num)

print(f'Guess the number in the range form {lower_num} to {higher_num}.')

while True:
    try:
        user_guess: int = int(input('Guess: '))
    except ValueError as e:
        print('Please enter a valid number.')
        continue

    if user_guess > random_number:
        print('The number is lower')
    elif user_guess < random_number:
        print('The number is higher')
    else:
        print('Good job! you guessed it!')
        break


