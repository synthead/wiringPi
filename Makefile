DYN_VERS_MAJ=2
DYN_VERS_MIN=0

VERSION=$(DYN_VERS_MAJ).$(DYN_VERS_MIN)

all:
	$(MAKE) -C wiringPi
	$(MAKE) -C devLib
	$(MAKE) -C gpio

install: install-wiringPi install-wiringPi-headers install-devLib install-devLib-headers install-gpio

install-wiringPi:
	install -m 755 -d $(DESTDIR)$(PREFIX)/lib
	install -m 755 wiringPi/libwiringPi.so.$(VERSION) $(DESTDIR)$(PREFIX)/lib/libwiringPi.so.$(VERSION)
	ln -sf libwiringPi.so.$(VERSION) $(DESTDIR)$(PREFIX)/lib/libwiringPi.so

install-wiringPi-headers:
	install -m 755 -d $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/wiringPi.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/wiringSerial.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/wiringShift.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/softPwm.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/softTone.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/wiringPiSPI.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/wiringPiI2C.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/drcSerial.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/mcp23008.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/mcp23016.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/mcp23017.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/mcp23s08.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/mcp23s17.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/max31855.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/max5322.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/mcp3002.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/mcp3004.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/mcp4802.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/mcp3422.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/sr595.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/pcf8574.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/pcf8591.h $(DESTDIR)$(PREFIX)/include
	install -m 644 wiringPi/sn3218.h $(DESTDIR)$(PREFIX)/include

install-devLib:
	install -m 755 -d $(DESTDIR)$(PREFIX)/lib
	install -m 755 devLib/libwiringPiDev.so.$(VERSION) $(DESTDIR)$(PREFIX)/lib/libwiringPiDev.so.$(VERSION)
	ln -sf libwiringPiDev.so.$(VERSION) $(DESTDIR)$(PREFIX)/lib/libwiringPiDev.so
 
install-devLib-headers:
	install -m 755 -d $(DESTDIR)$(PREFIX)/include
	install -m 644 devLib/ds1302.h $(DESTDIR)$(PREFIX)/include
	install -m 644 devLib/maxdetect.h $(DESTDIR)$(PREFIX)/include
	install -m 644 devLib/piNes.h $(DESTDIR)$(PREFIX)/include
	install -m 644 devLib/gertboard.h $(DESTDIR)$(PREFIX)/include
	install -m 644 devLib/piFace.h $(DESTDIR)$(PREFIX)/include
	install -m 644 devLib/lcd128x64.h $(DESTDIR)$(PREFIX)/include
	install -m 644 devLib/lcd.h $(DESTDIR)$(PREFIX)/include
	install -m 644 devLib/piGlow.h $(DESTDIR)$(PREFIX)/include

install-gpio:
	install -m 755 -d $(DESTDIR)$(PREFIX)/bin
	install -m 755 gpio/gpio $(DESTDIR)$(PREFIX)/bin
	install -m 755 -d $(DESTDIR)$(PREFIX)/share/man/man1
	install -m 644 gpio/gpio.1 $(DESTDIR)$(PREFIX)/share/man/man1

