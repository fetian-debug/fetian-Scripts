import pyshorteners
import os

def slink(l):
	

	link = l

	shortener = pyshorteners.Shortener()

	url = shortener.tinyurl.short(link)
	
	return(url)


link_input = input('enter link\n')

data =slink(link_input)

os.system("echo -n %s | xclip -selection clipboard" %data )


