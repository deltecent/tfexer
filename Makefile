all:	tfexer.rom

tfexer.rom: tfexer.asm
	zasm -uw --asm8080 tfexer.asm
	hexdump -v -e '"%06.6_ao: " 8/1 "%03o " "\n"' tfexer.rom > tfexer.oct
	zasm -uw -x --asm8080 tfexer.asm

