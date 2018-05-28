. $ZPREZTODIR/modules/z/external/z.sh
	function precmd () {
	     z --add "$(pwd -P)"
	 }
