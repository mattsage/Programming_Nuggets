thisfile = open(“datadirectory/file.txt”) 

thisfile.read() #reads entire file into one string
thisfile.readline() #reads one line of a file
thisfile.readlines() #reads entire file into a list of strings, one per line
for eachline in thisfile: #steps through lines in a file

  # Example:
linestring = open('/home/pi/Pushbulletkey.config', 'r').read()

# Then you can print it:
print linestring
