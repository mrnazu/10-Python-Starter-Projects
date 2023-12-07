#!/bin/bash

# Define project names and descriptions
projects=(
  "Mad Libs:A fun and interactive text-based game where users input words to create a humorous story."
  "Number Guessing Game:A simple console-based game where the user tries to guess a randomly generated number within a specified range."
  "Dice Simulator:Simulate the roll of a dice with user-friendly interfaces."
  "Hangman:A classic word-guessing game where players try to discover a hidden word by suggesting letters."
  "Rock, Paper, Scissors:A console-based implementation of the popular Rock, Paper, Scissors game."
  "Password Generator:Generate secure passwords with customizable options."
  "QR Code Generator:Create QR codes for various types of information."
  "Website Checker:Check the availability and response status of websites."
  "Brute Force:Implement a basic brute force algorithm for educational purposes."
  "Image Downloader:Download images from a given URL."
)

# Loop through projects array and create folders and README.md files
for i in "${!projects[@]}"; do
  project="${projects[$i]}"
  order_number=$(printf "0x%02X" "$((i+1))")
  name=$(echo "$project" | cut -d':' -f1 | tr ' ' '_' | tr ',' '_' | tr -d '[:space:]')
  description=$(echo "$project" | cut -d':' -f2-)
  
  # Create the project folder with order number and folder name without spaces
  mkdir -p "$order_number.$name"

  # Create README.md file with order number, folder name link, and project description
  echo "#### $order_number. [$name]($order_number.$name/)\n- $description" > "$order_number.$name/README.md"
done

echo "Folders and README.md files created successfully!"

