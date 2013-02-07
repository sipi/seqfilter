# seqfilter - Sequence Filter
# See LICENCE file for copyright and licence details.

include config.mk



all:

install: all
	@echo  installing executable file to ${PREFIX}/bin
	@mkdir -p ${PREFIX}/bin
	@cp -f src/seqfilter.sh ${PREFIX}/bin/seqfilter
	@chmod 755 ${PREFIX}/bin/seqfilter
