import os
os.chdir("C:/Users/user/Google Drive/MiscellaneousTasks") # change this for yourself

# it's also handy to have an auto-refresh plugin on your browser displaying your story file, so you can see your changes in real time

with open("story.txt","r",encoding="utf8") as f:
    already = f.read()

wordcount = len(already.split(" "))
count = 0

while True:
    with open("story.txt","a+",encoding="utf8") as f:
        if (count > 0):
            typing = input("[" + str(wordcount) + " words] What happens next: ")
        else:
            typing = input("[" + str(wordcount) + " words] What happens in your story? Tell me more: ")
            count += 1
        f.write(typing+"\n")
        wordcount += len(typing.split(" "))

