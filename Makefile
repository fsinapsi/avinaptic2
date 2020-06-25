
all:		avinaptic2 avinaptic2-cli

clean:
	rm -f *~ *.c avinaptic2 avinaptic2-cli *-compile *.log

install:	all
	cp -f avinaptic2 avinaptic2-cli /local/bin

avinaptic2:	avinaptic2.trp lang.tin utils.tin init.tin \
	        cfg.tin info.tin drf.tin srt.tin gui.tin dump.tin parse.tin \
		parse-avi.tin parse-asf.tin parse-mkv.tin \
		parse-mp4.tin parse-ogg.tin parse-flv.tin \
		parse-aud.tin parse-pix.tin parse-srt.tin \
                parse-log.tin
	trpc -f avinaptic2.trp

avinaptic2-cli:	avinaptic2-cli.trp lang.tin utils.tin init.tin \
		cfg.tin info.tin dump.tin parse.tin \
		parse-avi.tin parse-asf.tin parse-mkv.tin \
		parse-mp4.tin parse-ogg.tin parse-flv.tin \
		parse-aud.tin parse-pix.tin parse-srt.tin \
		parse-log.tin
	trpc -f avinaptic2-cli.trp

