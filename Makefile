all:
	cd pst2john && make

install:
	mkdir -p $(DESTDIR)/opt/hashstack/server/config
	mkdir -p $(DESTDIR)/opt/hashstack/server/files/scrapers
	install -m 0644 config/JohnTheRipper.json $(DESTDIR)/opt/hashstack/server/config/
	install -m 0755 scrapers/* $(DESTDIR)/opt/hashstack/server/files/scrapers/
	install -m 0755 pst2john/pst2john $(DESTDIR)/opt/hashstack/server/files/scrapers/

clean:
	cd pst2john && make clean
