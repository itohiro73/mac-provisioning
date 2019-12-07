setopt no_global_rcs

export PROVISION_HOME=~/.provisioning
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export SPARK_HOME="/usr/local/Cellar/apache-spark/1.4.1/libexec"
export PYTHONPATH=$SPARK_HOME/python

path=(
    ~/bin(N-/)
    $path
	~/.nodebrew/current/bin
	~/Development/books/nand2tetris/tools
	~/context/tex/texmf-osx-64/bin
	/usr/local/sbin
	/usr/local/bin
	~/.pyenv/bin
)

eval "$(pyenv init -)"
eval "$(rbenv init -)"

export LC_ALL=en_US.UTF-8
