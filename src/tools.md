# tools reference

## Weave codebase

This repo uses the `$WEAVE_HOME` environment variable as the main codebase directory.
You should have `$WEAVE_HOME` set to the root directory where your main repos 'live'.

> Usually this is at `$HOME/weave` or `$GOPATH/weavelab.xyz`.  (don't use `~/Desktop`)

Check if the `$WEAVE_HOME` or `$GOPATH` variables are set:
```sh
[ -z "$WEAVE_HOME" ]  && echo "WEAVE_HOME is empty" || echo "WEAVE_HOME=${WEAVE_HOME}"
[ -z "$GOPATH" ]  && echo "GOPATH is empty" || echo "$GOPATH=${$GOPATH}"
```

**Setup**

Temporarily set the variable `$WEAVE_HOME` if needed by running:  `WEAVE_HOME=$HOME/weave`
Permanently set the variable in your startup script by running one of these:

```sh
# which shell are you using ?
echo $0

# BASH command
echo "\n# weave\nexport WEAVE_HOME=$HOME/weave" >> ~/.bashrc

# ZSH command
echo "\n# weave\nexport WEAVE_HOME=$HOME/weave" >> ~/.zshrc
```

If you use `$GOPATH`, you can make a symbolic link to `$HOME/weave` by running:
`ln -s $HOME/weavelab.xyz $HOME/weave` 

## brew

Install [brew](https://docs.brew.sh/Installation) by running:
```sh
export HOMEBREW_NO_INSTALL_FROM_API=1
export HOMEBREW_GITHUB_URL=https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL $HOMEBREW_GITHUB_URL)"
```

## pyenv
Use pyenv to manage your python versions.


```sh
# install pyenv
brew install pyenv

# install python versions
pyenv install 3.10 3.11 3.12
pyenv local 3.10

python --version
```
## poetry

```sh
poetry config --list
```
