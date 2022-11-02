BIN = $(HOME)/bin
INS = cp $< $@

install:	\
	$(BIN)			\
	$(BIN)/dt		\
	$(BIN)/osc.cmk		\
	$(BIN)/osc.mk		\
	$(BIN)/osc.tests	\
	$(HOME)/.bash_logout	\
	$(HOME)/.bash_profile	\
	$(HOME)/.bashrc		\
	$(HOME)/.gitconfig	\
	$(HOME)/.minttyrc	\
	$(HOME)/.profile	\
	$(HOME)/.vimrc

$(BIN):
	mkdir $@

$(BIN)/dt:		dt
	$(INS)
$(BIN)/osc.cmk:		osc.cmk
	$(INS)
$(BIN)/osc.mk:		osc.mk
	$(INS)
$(BIN)/osc.tests:	osc.tests
	$(INS)
$(HOME)/.bash_logout:	bash_logout
	$(INS)
$(HOME)/.bash_profile:	bash_profile
	$(INS)
$(HOME)/.bashrc:	bashrc
	$(INS)
$(HOME)/.gitconfig:	gitconfig
	$(INS)
$(HOME)/.minttyrc:	minttyrc
	$(INS)
$(HOME)/.profile:	profile
	$(INS)
$(HOME)/.vimrc:		vimrc
	$(INS)


