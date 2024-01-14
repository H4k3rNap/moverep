Bash Directory Navigator Script

This Bash script provides a simple interactive directory navigator. It lists directories in the current directory, assigns them incremental numbers, prompts the user to choose a directory by entering the corresponding number, and then changes to the selected directory. The script continues this process until the user decides to exit.

Execute:

bash moverep.sh

# 1. Desktop
# 2. Documents
# 3. Images
# 4. Modèles
# 5. Music
# 6. Public
# 7. Download
# 8. Videos

Choose a directory number [Enter to quit ...]

Usage:

Run the script.
Choose a directory by entering its assigned number.
The script navigates to the selected directory.
Repeat the process until you decide to exit.
Features:

Interactive directory listing with numbered options.
User input validation for selecting directories.
Changes to the selected directory within the same script process.
Allows for continuous navigation without restarting the script.
Option to exit the script when desired.
Note:

The script uses (cd ... && echo "You are now in: $(pwd)") to change directories and display the new path within the same process.
Feel free to use and modify this script to fit your needs!

This description provides an overview of the script's purpose, features, and usage instructions for GitHub. You can use this as a README for your GitHub repository.
