#!/bin/bash

# Function to install packages using yum
install_packages() {
    if rpm -q $1 &> /dev/null; then
        echo "Package $1 is already installed."
    else
        echo "Installing package: $1"
        sudo yum install -y $1
    fi
}

# Function to remove packages using yum
remove_packages() {
    if rpm -q $1 &> /dev/null; then
        echo "Removing package: $1"
        sudo yum remove -y $1
    else
        echo "Package $1 is not installed."
    fi
}

# Main loop
while true; do
    # Menu for the user
    echo "Select a package to install: "
    echo "1) Install AWS CLI"
    echo "2) Install Git"
    echo "3) Install Node.js"
    echo "4) Install Docker"
    echo "5) Install Tree"
    echo "6) Install all available packages"
    echo "*) Exit"

    # Read user input
    read -p "Enter your choice: " choice

    # Case statement for handling different choices
    case $choice in
        1)
            install_packages "aws-cli"
            ;;
        2)
            install_packages "git"
            ;;
        3)
            install_packages "nodejs"
            ;;
        4)
            install_packages "docker"
            ;;
        5)
            install_packages "tree"
            ;;
        6)
            sudo yum install -y $(yum list available | awk '{print $1}' | grep -v '^$' | sort)
            ;;
        *)
            echo "Exiting script..."
            exit 0
            ;;
    esac

    # Ask user if they want to delete or install another package
    read -p "Do you want to (i)nstall another package, (r)emove a package, or (e)xit? " action
    case $action in
        i)
            # Continue the loop to install another package
            ;;
        r)
            # Prompt user for the package to remove
            read -p "Enter the package name to remove: " pkg_to_remove
            remove_packages $pkg_to_remove
            ;;
        e)
            echo "Exiting script..."
            exit 0
            ;;
        *)
            echo "Invalid option. Exiting script..."
            exit 1
            ;;
    esac
done
