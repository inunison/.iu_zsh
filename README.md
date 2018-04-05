# InUnison ZSH Config

## Installing

Install ZSH, a BASH alternative with better command completion,
extended file globbing, multi-line commands, spelling correction,
and many other features.
```bash
brew install zsh zsh-completions
```

Install [Oh My ZSH!](http://ohmyz.sh/), a framework for managing your ZSH configuration.
```bash
sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Configure your shell
```bash
cd ~
git clone git@github.com:inunison/.iu_zsh
cat > .zshrc <<- EOM
export IU_ZSH="$HOME/.iu_zsh"
export ZSH="$HOME/.oh-my-zsh"
source "$IU_ZSH/main.sh"
EOM
```
