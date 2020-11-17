build: hlcalc.obj

buildall: clean hlcalc.exe

compilerc: hlcalc.res

syntax:
	hla -s hlcalc.hla

clean:
	del *.exe
	del *.obj
	del *.res
	del *.link
	del *.asm
	del *.map

hlcalc.res: hlcalc.rc
	rc /v hlcalc.rc

hlcalc.obj: hlcalc.hla
	hla $(debug) -c hlcalc

hlcalc.exe: hlcalc.hla
	hla $(debug) hlcalc
