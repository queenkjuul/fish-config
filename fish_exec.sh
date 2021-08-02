# rather than chsh to run fish by default, leave bash as the default shell
# and instead have bash launch fish at startup. second if prevents this from happening
# when bash is called within fish. same code works for zsh/fish as well.
if [ -z "$BASH_EXECUTION_STRING" ]; then 
	if [[ "$(ps -o command= -p $PPID)" != "fish" ]]; then
		exec fish
	fi
fi
