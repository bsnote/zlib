if [[ "$PATH" != *"/usr/local/mips-2012.09/bin"* ]]; then
	export PATH="/usr/local/mips-2012.09/bin:$PATH"
fi

CHOST=mips-linux-gnu CFLAGS="-mips32r2 -EL -mabi=32" prefix=./out ./configure
make
make install

