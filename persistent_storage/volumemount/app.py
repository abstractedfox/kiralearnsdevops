import datetime
import sys

#Pass a path in argv[1] to use that for the output file

filename = "asdf"
if len(sys.argv) > 1:
    filename = sys.argv[1] + "asdf"

file = open(filename, "a")
now = datetime.datetime.now(datetime.UTC)
file.write(str(now.timestamp()))
file.write("\n")
file.close()

file = open(filename, "r")
print("This file was run at ")
for line in file.readlines():
    print(datetime.datetime.fromtimestamp(float(line)))
