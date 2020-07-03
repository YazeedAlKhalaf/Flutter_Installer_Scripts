#!/bin/sh
# Made By Yazeed AlKhalaf

emptySpace() {
    echo ""
}

header() {
    echo "Welcome To Flutter Installer Script"
    echo "     Made By Yazeed AlKhalaf       "
    emptySpace
    emptySpace
}

windows() {
    echo "You Chose Windows"
    emptySpace
    downloadLocation='`pwd`'
    emptySpace
    echo "Downloading Flutter SDK for Windows... (This may take a while)"
    emptySpace
    wget https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_1.17.5-stable.zip
    emptySpace
    echo "Unzipping Flutter SDK... (This may take a while)"
    emptySpace
    unzip *.zip
    emptySpace
    echo "Now you have to add the Flutter SDK to the PATH variable:"
    echo "1. Press Windows key"
    echo "2. Search for \"env\", then click on the first result"
    echo "3. Click on \"Environment Variables\""
    echo "4. Click on the \"Path\" variable in user variables"
    echo "5. Click \"Edit\" button"
    echo "6. Click on \"New\" button"
    echo "7. Paste this: `pwd`/flutter"
}

macOS() {
    echo "You Chose macOS"
}

linux() {
    echo "You Chose Linux"
}

menu() {
    PS3="Type the number that corresponds to your OS, followed by [ENTER]:"
    options=("Windows" "macOS" "Linux" "Quit")
    clear
    header
    select opt in "${options[@]}"
    do
        case $opt in
            "Windows")
                windows
                break
                ;;
            "macOS")
                macOS
                break
                ;;
            "Linux")
                linux
                break
                ;;
            "Quit")
                echo "Bye Bye!"
                break
                ;;
            *) echo "Invalid option $REPLY";;
        esac
    done
}

menu

echo "Done!"