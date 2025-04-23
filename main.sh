#!/bin/bash

apt install figlet
clear
figlet Web Blade
echo ""

URI=""
WORDLIST=""
RUN_SHELLFORGE=false
RUN_NIKTO=false
THREADS=10

dirFinder() {
    gobuster dir -u "$URI" -t "$THREADS" -w "$WORDLIST"
}

shellForge(){
    python3 /home/kali/ShellForge/app.py
}

niktoAnalyzer() {
    nikto -url "$URI"
}

while getopts "u:w:t:snh" opt; do
    case $opt in
        u) URI=$OPTARG ;;
        w) WORDLIST=$OPTARG ;;
        t) THREADS=$OPTARG ;;
        s) RUN_SHELLFORGE=true ;;
        n) RUN_NIKTO=true ;;
        h)
            echo "Usage: $0 -u <URI> -w <wordlist> -t <threads> [-s to run ShellForge] [-n to run Nikto]"
            exit 0
            ;;
    esac
done

if [[ "$RUN_NIKTO" == true ]]; then
    niktoAnalyzer
    exit 0
fi

if [[ "$RUN_SHELLFORGE" == true ]]; then
    shellForge
    exit 0
fi

if [ -z "$URI" ] || [ -z "$WORDLIST" ]; then
    echo "Both URI and wordlist are required!"
    exit 1
fi

dirFinder
