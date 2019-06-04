#!/usr/bin/env bash

# This little bash script aims to make writers hammer out their first draft
# starting with their desired ending, and prevents them from editing too soon.

# .md: markdown format (yes, URLs can be included)
fname="write_story_from_end.md"

# This will give a welcome prompt in bold :) and the word count of your work-in-progress

echo -e "\033[1mWelcome to your story writer! In your story, what happens at the end?\033[0m ($(($( wc -w <"$fname" ))) words)"
read var
echo $var >> $fname

# This will nag you in bold, like a little child eager to ask you more about your story
# (and yes, the word count is automatically updated every time you press ENTER)
while :
 do
 echo -e "\033[1mWhy did it happen?\033[0m ($(($( wc -w <"$fname" ))) words)" 
 echo -e "\033[1m (Challenge: Come up with 5 different answers, and decide which one(s) to explore.)\033[0m" 
 
 read var
 echo $var >> $fname
done

# Before you run this script, be sure to go to the location where you saved this file
# ("start-at-the-end.sh" only - not .txt, not any funny file extension),
# and enter the following command (starting with "chmod"):
#    chmod +x start-at-the-end.sh
