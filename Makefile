HEADERS = fst.h rijndael.h sha1.h structs.h tmd.h wudparts.h

default: wud2app

wud2app: main.c
	gcc main.c wudparts.c rijndael.c sha1.c -Wall -Wextra -O3 -s -static -o wud2app

clean:
	-rm -f wud2app
