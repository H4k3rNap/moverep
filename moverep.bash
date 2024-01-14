#!/bin/bash

#####################################################
#| | | | || | | | _|___ / _ __| \ | | __ _ _ __     #
#| |_| | || |_| |/ / |_ \| '__|  \| |/ _` | '_ \    #
#|  _  |__   _|   < ___) | |  | |\  | (_| | |_) |   #
#|_| |_|  |_| |_|\_\____/|_|  |_| \_|\__,_| .__/    #
#                                         |_|       #
#####################################################
#
# H4k3rNap:~$moverep
# Read Readme.txt
#
# Moverep 1.0
#
# 1. Desktop
# 2. Documents
# 3. Images
# 4. Modèles
# 5. Music
# 6. Public
# 7. Download
# 8. Videos

Choose a directory number [Enter to quit ...]:

clear
echo "Moverep 1.0"
echo ""

# Liste les répertoires dans le répertoire courant avec des numéros
list_directories() {
    local directories=($(ls -d */ 2>/dev/null))

    # Vérifier s'il y a des répertoires
    if [ ${#directories[@]} -eq 0 ]; then
        echo "No directories found!"
        echo ""
        exit 0
    fi

    local i=1
    for dir in "${directories[@]}"; do
        dir_without_last_char="${dir%?}"
        echo "$i. $dir_without_last_char"
        ((i++))
    done
}

# Entrer dans le répertoire choisi par l'utilisateur
enter_directory() {
    local selected_dir
    echo
    read -p "Choose a directory number [Enter to quit ...]: " selected_dir
    echo

    # Vérifier si l'entrée est un nombre valide
    if [[ "$selected_dir" =~ ^[0-9]+$ ]]; then
        # Récupérer le répertoire correspondant au numéro choisi
        local directories=($(ls -d */ 2>/dev/null))
        if ((selected_dir >= 1 && selected_dir <= ${#directories[@]})); then
            choice="moverep"
            echo $choice >> $HOME/.bash_history
            (cd "${directories[selected_dir - 1]}" && exec bash)
        else
            echo "Invalid number! Bye ..."
            echo
        fi
    else
        echo "Bye ..."
        echo
    fi
}

# Shows the list of directories
list_directories

# Ask the user to choose a directory
enter_directory
