all: install.cmd
clean: clean.cmd
test: test.pkg
bench: bench.pkg

%.cmd: %.pkg
	cd cmd && make $*

%.pkg:
	cd pkg/assert && make $*
	cd pkg/util && make $*
	cd pkg/store && make $*
	cd pkg/paxos && make $*
	cd pkg/proto && make $*
	cd pkg/shell && make $*
	cd pkg && make $*

