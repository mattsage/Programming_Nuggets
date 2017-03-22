the_string = “Hello World!”
the_string = ‘Hello World!’
the_string[4] #returns ‘o’
the_string.split(‘ ‘) #returns [‘Hello’, ‘World!’]
the_string.split(‘r”) #returns [‘Hello Wo’, ‘ld!’]


words = [“this”, ‘is’, ‘a’, ‘list’, ‘of’, “strings”]
‘ ‘.join(words) #returns “This is a list of strings”
‘ZOOL’.join(words) #returns “ThisZOOLisZOOLaZOOLlistZOOLofZOOLstrings”
‘’.join(words) #returns “Thisisalistofstrings”


this_string = “there”
print “Hello %s!”%this_string #returns “Hello there!”
