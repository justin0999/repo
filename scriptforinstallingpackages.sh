#!/bin/bash
#
#Function to install packages using yum
install_packages() {
        if rpm -q "$1" &> /dev/null; then
                echo "Package $1 is already installed."
        else
                echo "Installing package: $1"
                sudo yum install -y "$1"
        fi
}

# Function to remove packages using yum
remove_packages() {
        if rpm -q "$1" &> /dev/null; then
                echo "Removing package: $1"
                sudo yum remove -y "$1"
        else
                echo "Package $1 is not installed."
        fi
}

# Main loop
while true; do
       # Menu for the user
        echo "Select an option:"
        echo "1) Install a specific package"
        echo "2) Remove a specific package"
        echo "*) Exit"

        # Read user input
        read -p "Enter your choice: " choice

        # Case statement for handling different choices
        case $choice in
                1)
                        #Prompt the user to enter the package name to install
                        read -p "Enter the package name to install: " package_name
                        install_packages "$package_name"
                        ;;
                2)
                        # Prompt user for the package to remove
                        read -p "Enter the package name to remove: " pkg_to_remove
                        remove_packages "$pkg_to_remove"
                        ;;
                *)
                        echo "Exiting script..."
                        exit 0
                        ;;
        esac

        # Ask user if they want to perform another action
        read -p "Do you want to (i)nstall another package, (r)emove a package, or (e)xit? " action
        case $action in
                i)
                        continue # Go back to the menu
                        ;;
                r)
                        read -p "Enter the package name to remove: " pkg_to_remove
                        remove_packages "$pkg_to_remove"
                        ;;
                e)
                        eccho "Exiting script..."
                        exit 0
                        ;;
                *)
                        echo "Invalid option. Exiting script..."
                        exit 1
                        ;;
        esac
done
