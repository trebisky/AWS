# disassemble

all:	toms.dis

.PHONY: toms.dis

# a1 is the msb, a2 is the lsb

toms.dis:
	#./dis8x30x -l ROMS/awsa1.bin ROMS/awsa2.bin >toms.dis
	#./8x300_dis -l ROMS/awsa1.bin ROMS/awsa2.bin >toms.dis
	./8x300_dis -l awsa1.bin awsa2.bin >toms.dis

install:
	cp 8x300_dis /usr/local/bin

clean:
	rm -f toms.dis
