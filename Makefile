# disassemble

all:	toms.dis

.PHONY: toms.dis

# a1 is the msb, a2 is the lsb

toms.dis:
	#./dis8x30x -l ROMS/awsa1.bin ROMS/awsa2.bin >toms.dis
	./8x300_dis -l ROMS/awsa1.bin ROMS/awsa2.bin >toms.dis

clean:
	rm -f toms.dis
