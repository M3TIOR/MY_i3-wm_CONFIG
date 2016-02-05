#M3TIOR 2016

install:
	@if [ -e "~/.i3/" ]; then \ # Have to keep these here so atom
		mkdir ~/.i3/backup; \ # doesn't decide that the spaces
		mv ~/.i3/* ~/.i3/backup/; \ # behind them are worthless.
	fi # Cause if they're gone then this doensn't work!
	@cp -a ./files/* ~/.i3/

.PHONY: remove rebase
remove:
	@if [ -e "~/.i3/backup" ]; then \ # boop
		find . ! -name 'backup' -exec rm -rf {} +; \ # boop
		mv ~/.i3/backup/* ~/.i3/; \ # boop
		rm -rf ~/.i3/backup; \ # beep
	fi # skzzt
	@echo "files succesfully restored";

rebase:
	@rm -rf ./files/*;
	@cp -a ~/.i3/* ./files/;
