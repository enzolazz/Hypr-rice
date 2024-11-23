#! /bin/bash
 
cp -r .config/* $HOME/.config
cp -r .local/bin/scripts $HOME/.local/bin
cp -r .local/bin/scripts $HOME/.local/bin
cp -r .icons $HOME/.icons
cp -r .themes $HOME/.themes
cp -r .fonts $HOME/.fonts

fc-cache -f

# add scripts to PATH
NPATH="$HOME/.local/bin"

# add it only if required
case ":${PATH}:" in
  *:${NPATH}:*) ;;
  *) PATH=${PATH}:$NPATH ;;
esac

export PATH

