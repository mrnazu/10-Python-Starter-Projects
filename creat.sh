#!/bin/bash

# Define project names and descriptions
projects=(
  "Mad Libs:A text-based game where users input words to create a humorous story."
  "Number Guessing Game:A console-based game where the user guesses a randomly generated number within a specified range."
  "Dice Simulator:Simulate the roll of a dice with user-friendly interfaces."
  "Hangman:A classic word-guessing game where players discover a hidden word by suggesting letters."
  "Rock, Paper, Scissors:A console-based implementation of the popular Rock, Paper, Scissors game."
  "Password Generator:Generate secure passwords with customizable options."
  "QR Code Generator:Create QR codes for various types of information."
  "Website Checker:Check the availability and response status of websites."
  "Brute Force:Implement a basic brute force algorithm for educational purposes."
  "Image Downloader:Download images from a given URL."
)



# Loop through projects array and create folders and README.md files
for project in "${projects[@]}"; do
  name=$(echo "$project" | cut -d':' -f1 | tr ' ' '_')
  description=$(echo "$project" | cut -d':' -f2-)
  
  # Create the project folder
  mkdir "$name"

  # Create README.md file with project description
  echo "# $name\n\n**Description:** $description" > "$name/README.md"
done

echo "Folders and README.md files created successfully!"

