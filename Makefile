.DELETE_ON_ERROR:

AS = asar

ASM = hack.asm
HACK = hack.sfc
ROM = twinbee-jp.sfc

$(HACK): $(ASM)
	cp $(ROM) $(HACK)
	$(AS) $(ASM) $(HACK)

.PHONY: all clean test
clean:
	rm -rf $(HACK)
