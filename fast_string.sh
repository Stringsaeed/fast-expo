#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
echo -e "${GREEN}Welcome, Hacker :)${YELLOW}"
read -p "Project Name: " projectName
read -p "Screen Name: " screenName
echo -e "${RED}Please Wait for Expo to do all good working"
{
	expo init $projectName --non-interactive --name $screenName --template blank --workflow managed	
	cd $projectName/
	expo install redux react-redux redux-observable lodash prop-types react-navigation react-native-vector-icons react-navigation-stack axios
} 1>/dev/null 2>&1
cd src/
find . -type d -exec touch {}/index.js\;
cd ..
echo -e "${GREEN}H${YELLOW}a${GREEN}p${YELLOW}p${GREEN}y${YELLOW}, H${GREEN}a${YELLOW}c${GREEN}k${YELLOW}i${GREEN}n${YELLOW}n${GREEN}g${YELLOW} ;)"

