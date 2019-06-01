#!/usr/bin/env bash

# This little bash script aims to make writers hammer out their first draft
# without thinking too much or rereading or editing/revising too early.

# .md: markdown format (yes, URLs can be included)
fname="the_story.md"

# This will give a welcome prompt in bold :) and the word count of your work-in-progress

echo -e "\033[1mWelcome to your story writer! What happens in your story?\033[0m ($(($( wc -w <"$fname" ))) words)"
read var
echo $var >> $fname

# This will nag you in bold, like a little child eager to ask you more about your story
# (and yes, the word count is automatically updated every time you press ENTER)
while :
 do
 echo -e "\033[1mWhat happens next?\033[0m ($(($( wc -w <"$fname" ))) words)" 
 read var
 echo $var >> $fname
done

# Before you run this script, be sure to go to the location where you saved this file
# ("writer-helper.sh" only - not .txt, not any funny file extension),
# and enter the following command (starting with "chmod"):
#    chmod +x writer-helper.sh

# One more issue:
# if your input content includes a series of asterisks, say ** or *** or more,
# a horrible thing happens: instead of what you type, all the files in the same directory as
# writing-helper.sh will be inputted to your work-in-progress.
# So, just in case your work contains sensitive content, please refrain from using asterisks.
# Otherwise, you will be puzzled at the appearance of strange file names in your draft.
