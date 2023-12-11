BIN = $(HOME)/bin
INS = cp $< $@; chmod +x $@

install:	\
	$(BIN)			\
	$(BIN)/dt		\
	$(BIN)/ghclone		\
	$(BIN)/git_changed_files    \
	$(BIN)/includes.py      \
	$(BIN)/osc.cmk		\
	$(BIN)/osc.mk		\
	$(BIN)/osc.tests	\
	$(BIN)/osclone		\
	$(BIN)/pngcmp           \
	$(BIN)/pull             \
	$(BIN)/rcolyer-git-pull-request \
	$(BIN)/treegrep         \
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
$(BIN)/ghclone:		ghclone
	$(INS)
$(BIN)/osclone:		osclone
	$(INS)
$(BIN)/osc.cmk:		osc.cmk
	$(INS)
$(BIN)/osc.mk:		osc.mk
	$(INS)
$(BIN)/osc.tests:	osc.tests
	$(INS)
$(BIN)/git_changed_files:	git_changed_files
	$(INS)
$(BIN)/includes.py:	includes.py
	$(INS)
$(BIN)/pngcmp:	pngcmp
	$(INS)
$(BIN)/pull:	pull
	$(INS)
$(BIN)/rcolyer-git-pull-request:	rcolyer-git-pull-request
	$(INS)
$(BIN)/treegrep:	treegrep
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

