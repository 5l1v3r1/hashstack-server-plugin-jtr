all:
	cd pst2john && make

install:
	mkdir -pv $(DESTDIR)/opt/hashstack/server/config
	mkdir -pv $(DESTDIR)/opt/hashstack/server/files/scrapers
	install -v -m 0644 config/JohnTheRipper.json $(DESTDIR)/opt/hashstack/server/config/
	install -v -m 0755 pst2john/pst2john $(DESTDIR)/opt/hashstack/server/files/scrapers/
	cp -Pv scrapers/* $(DESTDIR)/opt/hashstack/server/files/scrapers/

clean:
	cd pst2john && make clean
