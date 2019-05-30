#!/usr/bin/env bash

fname="the_story.md"

echo -e "\033[1mWelcome to your story writer! What happens in your story?\033[0m ($(($( wc -w <"$fname" ))) words)"
read var
echo $var >> $fname

while :
 do
 echo -e "\033[1mWhat happens next?\033[0m ($(($( wc -w <"$fname" ))) words)" 
 read var
 echo $var >> $fname
done
