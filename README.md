
# ZSH Config 

------
To Do
-------
[] todo move mpg and cpg to .assets
[] add fonts to .assets
[] get fzf working
[] add bat
[] fix nnn
[] clean setup script (new script) excl. things from repo.
[] clean all files.
[] checkout highlight http://www.andre-simon.de/doku/highlight/en/install.php
[] checkout https://github.com/romkatv/zsh4humans
[] why was zsh-syntax-highlighting index deleted? Do I need to care?

Sources
_____

https://joshldavis.com/2014/07/26/oh-my-zsh-is-a-disease-antigen-is-the-vaccine/
https://github.com/brandon-fryslie/rad-shell
https://github.com/sharkdp/bat
https://github.com/romkatv/zsh4humans
https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins
https://github.com/zsh-users
https://github.com/zsh-users/antigen/wiki/Commands
https://github.com/belak/zsh-utils
https://timewarrior.net/docs/install/
https://www.baeldung.com/linux/heredoc-herestring
https://ohmyz.sh/
https://tldp.org/LDP/Bash-Beginners-Guide/html/Bash-Beginners-Guide.html#chap_12
https://github.com/ohmyzsh/ohmyzsh
https://github.com/owenthereal/ccat
https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
https://timewarrior.net/
https://github.com/zsh-users/antigen/wiki/Commands
https://github.com/romkatv/powerlevel10k#manual
A custom terminal configuration
jarun_nnn_ n³ The unorthodox terminal file manager.html https://github.com/jarun/nnn
https://github.com/jarun/advcpmv

https://www.tecmint.com/cat-command-output-with-syntax-highlighting-or-color/
https://github.com/zyedidia/micro/blob/master/runtime/help/plugins.md
https://github.com/zsh-users/antigen/wiki/Commands


FZF_COMPLETION_OPTS
fzf_default_completion

## Aliases 
[] check these too
 https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
A random list online, check for good ones

## Things to explore

[Parameter-Expansion](http://zsh.sourceforge.net/Doc/Release/Expansion.html#Parameter-Expansion)

[Parameter-Expansion-Flags](http://zsh.sourceforge.net/Doc/Release/Expansion.html#Parameter-Expansion-Flags)
[14 Expansion](http://zsh.sourceforge.net/Doc/Release/Expansion.html#Expansion)

alias e='vi'
alias egrep='grep -E'
alias ewformat='fdformat -n /dev/fd0u1743; ewfsck'
alias fgrep='grep -F'
alias ftp='ncftp -d15'
alias h='history 10'
alias fformat='fdformat /dev/fd0H1440'
alias j='jobs -l'
alias ksane='setterm -reset'
alias ls='ls -F --color=auto'
alias m='less'
alias md='mkdir'
alias od='od -Ax -ta -txC'
alias p='pstree -p'
alias ping='ping -vc1'
alias sb='ssh blubber'
alias sl='ls'
alias ss='ssh octarine'
alias tar='gtar'
alias tmp='cd /tmp'
alias unaliasall='unalias -a'
alias vi='eval `resize`;vi'
alias vt100='export TERM=vt100'
alias which='type'
alias xt='xterm -bg black -fg white &'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias PAGER='less -r'
alias Txterm='export TERM=xterm'
alias XARGS='xargs -r'
alias cdrecord='cdrecord -dev 0,0,0 -speed=8'



set -o output

noaliases             off
aliasfuncdef          off
allexport             off
noalwayslastprompt    off
alwaystoend           off
appendcreate          off
noappendhistory       off
autocd                off
autocontinue          off
noautolist            off
noautomenu            off
autonamedirs          off
noautoparamkeys       off
noautoparamslash      off
autopushd             off
noautoremoveslash     off
autoresume            off
nobadpattern          off
nobanghist            off
nobareglobqual        off
bashautolist          off
bashrematch           off
nobeep                off
nobgnice              off
braceccl              off
bsdecho               off
nocaseglob            off
nocasematch           off
cbases                off
cdablevars            off
chasedots             off
chaselinks            off
nocheckjobs           off
noclobber             off
combiningchars        off
completealiases       off
completeinword        off
continueonerror       off
correct               off
correctall            off
cprecedences          off
cshjunkiehistory      off
cshjunkieloops        off
cshjunkiequotes       off
cshnullcmd            off
cshnullglob           off
nodebugbeforecmd      off
dvorak                off
emacs                 off
noequals              off
errexit               off
errreturn             off
noevallineno          off
noexec                off
extendedglob          off
extendedhistory       off
noflowcontrol         off
forcefloat            off
nofunctionargzero     off
noglob                off
noglobalexport        off
noglobalrcs           off
globassign            off
globcomplete          off
globdots              off
globstarshort         off
globsubst             off
nohashcmds            off
nohashdirs            off
hashexecutablesonly   off
nohashlistall         off
histallowclobber      off
nohistbeep            off
histexpiredupsfirst   off
histfcntllock         off
histfindnodups        off
histignorealldups     off
histignoredups        off
histignorespace       off
histlexwords          off
histnofunctions       off
histnostore           off
histreduceblanks      off
nohistsavebycopy      off
histsavenodups        off
histsubstpattern      off
histverify            off
nohup                 off
ignorebraces          off
ignoreclosebraces     off
ignoreeof             off
incappendhistory      off
incappendhistorytime  off
interactive           on
interactivecomments   off
ksharrays             off
kshautoload           off
kshglob               off
kshoptionprint        off
kshtypeset            off
kshzerosubscript      off
nolistambiguous       off
nolistbeep            off
listpacked            off
listrowsfirst         off
nolisttypes           off
localloops            off
localoptions          off
localpatterns         off
localtraps            off
login                 off
longlistjobs          off
magicequalsubst       off
mailwarning           off
markdirs              off
menucomplete          off
monitor               on
nomultibyte           off
nomultifuncdef        off
nomultios             off
nonomatch             off
nonotify              off
nullglob              off
numericglobsort       off
octalzeroes           off
overstrike            off
pathdirs              off
pathscript            off
pipefail              off
posixaliases          off
posixargzero          off
posixbuiltins         off
posixcd               off
posixidentifiers      off
posixjobs             off
posixstrings          off
posixtraps            off
printeightbit         off
printexitvalue        off
privileged            off
promptbang            off
nopromptcr            off
nopromptpercent       off
nopromptsp            off
promptsubst           on
pushdignoredups       off
pushdminus            off
pushdsilent           off
pushdtohome           off
rcexpandparam         off
rcquotes              off
norcs                 off
recexact              off
rematchpcre           off
restricted            off
rmstarsilent          off
rmstarwait            off
sharehistory          off
shfileexpansion       off
shglob                off
shinstdin             on
shnullcmd             off
shoptionletters       off
noshortloops          off
shwordsplit           off
singlecommand         off
singlelinezle         off
sourcetrace           off
sunkeyboardhack       off
transientrprompt      off
trapsasync            off
typesetsilent         off
nounset               off
verbose               off
vi                    off
warncreateglobal      off
warnnestedvar         off
xtrace                off
zle                   on


## Powerlevel10k

[p10k](https://github.com/romkatv/powerlevel10k#manual)

## ZSH Plugins

[zsh-syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

[zsh-users/zsh-completions: Additional completion definitions for Zsh.](https://github.com/zsh-users/zsh-completions)
git submodule add --depth=1 --init https://github.com/zsh-users/zsh-completions.git  
## Antigen

### Antigen exports:
_ANTIGEN_BUNDLE_RECORD
ANTIGEN_BUNDLES
ANTIGEN_CACHE
_ANTIGEN_CACHE_LOADED
_ANTIGEN_CACHE_VERSION
ANTIGEN_CHECK_FILES
ANTIGEN_DEFAULT_REPO_URL
_ANTIGEN_INSTALL_DIR
ANTIGEN_RSRC
_ANTIGEN_THEME

[ZSH Users Git](https://github.com/zsh-users)


[Antigen](https://github.com/zsh-users/antigen)

[Commands Reference](https://github.com/zsh-users/antigen/wiki/Commands)

One other thing it does is that some oh-my-zsh plugins expect a $ZSH set to the full path of the oh-my-zsh clone being used. This is also set to the correct path, if not already set to something else.

[Commands · zsh-users/antigen Wiki](https://github.com/zsh-users/antigen/wiki/Commands)

> ### antigen bundle
> 
> This command tells Antigen to install (if not already installed) and load the given plugin. The simplest usage follows the following syntax.
> 
>     antigen bundle <plugin-name>
>     
> 
> This will install and load the `plugins/<name>` directory from \[robbyrussell's oh-my-zsh\]\[oh-my-zsh\] (can be changed by setting `ANTIGEN_DEFAULT_REPO_URL`).
> 
> However, the above is just syntax sugar for the extended syntax of the `antigen bundle` command.
> 
>     antigen bundle [<url>[@tag|branch] [<loc>]]
>     
> 


> where `<url>` is the repository url and it defaults to \[robbyrussell's oh-my-zsh\]\[oh-my-zsh\] repo (can be changed by setting `ANTIGEN_DEFAULT_REPO_URL` discussed further down). `<loc>` is the path under this repository which has the zsh plugin. This is typically the directory that contains a `*.plugin.zsh` file, but it could contain a completion file or just many `*.zsh` files to be sourced, or it could simply be a file (with any extension) that you want to source. `<loc>` defaults to `/`, which indicates the repository itself is a plugin.
> 


> Use `@tag` or `@branch` to request a tag or a branch. You may use semver-like format such as `0.5.*`.
> 
> An example invocation would be
> 
>     # The following is the same as `antigen bundle ant`. But for demonstration
>     # purposes, we use the extended syntax here.
>     antigen bundle https://github.com/robbyrussell/oh-my-zsh.git plugins/ant
>     
> 
> This would install the ant plugin from robbyrussell's oh-my-zsh repo. Of course, github url's can be shortened.
> 
>     antigen bundle robbyrussell/oh-my-zsh plugins/ant

Here we try and use our local copy


ANTIGEN_DEFAULT_REPO_URL=$ZSH_CUSTOM/ohmyzsh/h-my-zsh.git

More


> _Note_ that you can mix and match positional and keyword arguments. But you can't have positional arguments after keyword arguments.
> 
>     antigen bundle robbyrussell/oh-my-zsh --loc=plugins/ant
>     
> 
> And keyword arguments don't care about the order in which the arguments are specified. The following is perfectly valid.
> 
>     antigen bundle --loc=plugins/ant --url=robbyrussell/oh-my-zsh
>     
> 
> ==You can also specify a local directory on your file system as a bundle.== In this case, _make sure the path you give is the absolute path (i.e., starts with a `/`). Relative paths are not supported. If_ the repo you gave is a local directory path, then it is not necessary that this path is a git repo. ==Please refer to the notes on `--no-local-clone` below.==
> 
> This command can also be used from your shell environment. This allows you to install plugins on the fly and try them out. Of course if you want a bundle to be available every time you open a shell, put it in your `.zshrc`.

#### No Local Clone arg

> `--no-local-clone` — This command can be useful if you are developing a plugin and already have a clone on your local file system. If this argument is not given, even if the given repo url is a local path, a clone is made in the ==`$ANTIGEN_BUNDLES` directory,== and the plugin is loaded from that clone. But, if you give this argument, the plugin is sourced straight from the repo location, without creating a clone. For example,
> 
>     antigen bundle /absolute/path/to/the/plugin --no-local-clone
>     
> 
> Note that if the repo url is _not_ an absolute local path or a branch has been specified with the `--branch` option, this argument has no effect. That is, for this option to have any affect, the repo url must be an absolute local path and no `--branch` should be specified.
> 
> Also, if the local path given as the url is not a git repo, then this argument is forced as it doesn't makes sense to _clone_ something that's not a git repo. This property can be used to load any utility scripts you have in your dotfiles repo. For example,
> 
>     antigen bundle $HOME/dotfiles/oh-my-zsh/custom

[Commands · zsh-users/antigen Wiki](https://github.com/zsh-users/antigen/wiki/Commands)

### antigen use
> 
> This command lets you load any (supported) zsh pre-packaged framework, like oh-my-zsh, as well as any library from custom url. Usage is
> 
>     antigen use oh-my-zsh
>     
> 
> Additional arguments may be present depending on the framework you are `use`\-ing. Here are the supported frameworks.
> 
> #### oh-my-zsh
> 
> It basically installs the oh-my-zsh's library as a bundle.
> 
> !!!Note Note many Oh-my-zsh plugins expect $ZSH to == oh-my-zsh.git
>> One other thing it does is that some oh-my-zsh plugins expect a `$ZSH` set to the full path of the oh-my-zsh clone being used. This is also set to the correct path, if not already set to something else.
> 
> Please note that this assumes that the `ANTIGEN_DEFAULT_REPO_URL` is set to the oh-my-zsh repo or a fork of that repo. If you want to specify the `url` too, then you can't use the `antigen use oh-my-zsh` short cut. You have to do that directly with the `antigen bundle` command.
> 
> Use
> 
>     antigen use oh-my-zsh
>     
> 
> in your `.zshrc`, before any `antigen bundle` declarations. It takes no further arguments.


## Oh My ZSH

[Oh-My-ZSH](https://ohmyz.sh/)

## Advanced Copy and Move

Adds a progress bar to these utilities.

https://github.com/jarun/advcpmv


## TimeWarrior

[TimeWarrior](https://timewarrior.net/)



## TaskWarror





## fzf

[](https://github.com/junegunn/fzf#using-git)

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

Search syntax
Unless otherwise specified, fzf starts in "extended-search mode" where you can type in multiple search terms delimited by spaces. e.g. ^music .mp3$ sbtrkt !fire

Token   Match typesDescription
sbtrkt  fuzzy-matchingItems that match sbtrkt
'wild   exact-match (quoted)    Items that include wild
^music  prefix-exact-matchingItemsItems that start with music
.mp3$   suffix-exact-matchingItemsItemsItems that end with .mp3
!fire   inverse-exact-matchingItemsItemsItemsItems that do not include fire
!^music inverse-prefix-exact-matchingItemsItemsItemsItemsItems that do not start with music
!.mp3$  inverse-suffix-exact-matchingItemsItemsItemsItemsItemsItems that do not end with .mp3

[junegunn/fzf: A command-line fuzzy finder](https://github.com/junegunn/fzf#using-git)

> ## `fzf-tmux` script
>
> [fzf-tmux](https://github.com/junegunn/fzf/blob/master/bin/fzf-tmux) is a bash script that opens fzf in a tmux pane.
>
> # usage: fzf-tmux \[LAYOUT OPTIONS\] \[--\] \[FZF OPTIONS\]
>
> # See available options
> fzf-tmux --help
>
> # select git branches in horizontal split below (15 lines)
> git branch | fzf-tmux -d 15
>
> # select multiple words in vertical split on the left (20% of screen width)
> cat /usr/share/dict/words | fzf-tmux -l 20% --multi --reverse
>
> It will still work even when you're not on tmux, silently ignoring `-[pudlr]` options, so you can invariably use `fzf-tmux` in your scripts.
>
> Alternatively, you can use `--height HEIGHT[%]` option not to start fzf in fullscreen mode.
>
> fzf --height 40%
>
> ## Key bindings for command-line
>
> The install script will setup the following key bindings for bash, zsh, and fish.
>
-   `CTRL-T` - Paste the selected files and directories onto the command-line
-   Set ==`FZF_CTRL_T_COMMAND`== to override the default command
-   Set ==`FZF_CTRL_T_OPTS`== to pass additional options
-   `CTRL-R` - Paste the selected command from history onto the command-line
-   If you want to see the commands in chronological order, press `CTRL-R` again which toggles sorting by relevance
-   Set ==`FZF_CTRL_R_OPTS`== to pass additional options
-   `ALT-C` - cd into the selected directory
-   Set ==`FZF_ALT_C_COMMAND` to== override the default command
-   Set `FZF_ALT_C_OPTS` to pass additional options
>
> If you're on a tmux session, you can start fzf in a tmux split-pane or in a tmux popup window by setting `FZF_TMUX_OPTS` (e.g. `-d 40%`). See `fzf-tmux --help` for available options.
>
> More tips can be found on [the wiki page](https://github.com/junegunn/fzf/wiki/Configuring-shell-key-bindings).
>
> ## Fuzzy completion for bash and zsh
>
> #### Files and directories
>
> Fuzzy completion for files and directories can be triggered if the word before the cursor ends with the trigger sequence, which is by default `**`.
[junegunn/fzf: A command-line fuzzy finder](https://github.com/junegunn/fzf#using-git)

> ## [](https://github.com/junegunn/fzf#tips)Tips
>
> #### Respecting `.gitignore`
>
> You can use [fd](https://github.com/sharkdp/fd), [ripgrep](https://github.com/BurntSushi/ripgrep), or [the silver searcher](https://github.com/ggreer/the_silver_searcher) instead of the default find command to traverse the file system while respecting `.gitignore`.
>
> # Feed the output of fd into fzf
> fd --type f | fzf
>
> # Setting fd as the default source for fzf
> export FZF\_DEFAULT\_COMMAND='fd --type f'
>
> # Now fzf (w/o pipe) will use fd instead of find
> fzf
>
> # To apply the command to CTRL-T as well
> export FZF\_CTRL\_T\_COMMAND="$FZF\_DEFAULT\_COMMAND"


## bat

Highlighter script

Highlighting theme

Use bat --list-themes to get a list of all available themes for syntax highlighting. To select the TwoDark theme, call bat with the --theme=TwoDark option or set the BAT_THEME environment variable to TwoDark. Use export BAT_THEME="TwoDark" in your shell's startup file to make the change permanent. Alternatively, use bats configuration file.

If you want to preview the different themes on a custom file, you can use the following command (you need fzf for this):

bat --list-themes | fzf --preview="bat --theme={} --color=always /path/to/file"

_____
## Micro

https://github.com/zyedidia/micro

[Plugins](https://github.com/zyedidia/micro/blob/master/runtime/help/plugins.md)

[micro/plugins.md at master · zyedidia/micro](https://github.com/zyedidia/micro/blob/master/runtime/help/plugins.md)

> There are 6 default plugins that come pre-installed with micro. These are
>
> -   `autoclose`: automatically closes brackets, quotes, etc...
> -   `comment`: provides automatic commenting for a number of languages
> -   `ftoptions`: alters some default options depending on the filetype
> -   `linter`: provides extensible linting for many languages
> -   `literate`: provides advanced syntax highlighting for the Literate programming tool.
> -   `status`: provides some extensions to the status line (integration with Git and more).
> -   `diff`: integrates the `diffgutter` option with Git. If you are in a Git directory, the diff gutter will show changes with respect to the most recent Git commit rather than the diff since opening the file.
>
> See `> help linter`, `> help comment`, and `> help status` for additional documentation specific to those plugins.

[micro-editor/plugin-channel: Official plugin channel for micro](https://github.com/micro-editor/plugin-channel)

> ### Micro Official Plugin Channel
>
> This repository contains the 'channel.json' file which lists all official micro plugins. This is where the editor looks to search for plugins to install.
>
> #### Plugins
> 
> `comment`
>
> Plugin to auto comment or uncomment lines
> [https://github.com/micro-editor/comment-plugin](https://github.com/micro-editor/comment-plugin)
> ✔️ (provided by default)
>
> `snippets`
> Provides snippets functionality
>
> [https://github.com/tommyshem/micro-snippets-plugin](https://github.com/tommyshem/micro-snippets-plugin)

> `go`
> Provides `gofmt` and `goimports` support for Go files
> [https://github.com/micro-editor/go-plugin](https://github.com/micro-editor/go-plugin)
>
> `fish`
>
> Provides `fishfmt` support for Fish files
> [https://github.com/onodera-punpun/micro-fish-plugin](https://github.com/onodera-punpun/micro-fish-plugin)
> ✔️
>
> `wc`
> Plugin to count words/characters
> [https://github.com/adamnpeace/micro-wc-plugin](https://github.com/adamnpeace/micro-wc-plugin)
> ✔️
>
> `fzf`
> Provides `fzf` support for opening files
> [https://github.com/samdmarshall/micro-fzf-plugin](https://github.com/samdmarshall/micro-fzf-plugin)
> ✔️
>
> `pony`
> Provides auto-indentation for Pony files
> [https://github.com/Theodus/micro-pony-plugin](https://github.com/Theodus/micro-pony-plugin)
> ✔️
>
> `editorconfig`
> EditorConfig Support for micro
> [https://github.com/10sr/editorconfig-micro](https://github.com/10sr/editorconfig-micro)
> ✔️
>
> `crystal`
> Provides various `crystal` tools for crystal files
> [https://github.com/ColinRioux/micro-crystal](https://github.com/ColinRioux/micro-crystal)
> ✔️
>
> `gotham-colors`
> A colorscheme for code that never sleeps in Gotham City
> [https://github.com/novln/micro-gotham-colors](https://github.com/novln/micro-gotham-colors)
>
> ✔️ (provided by default)
>
> `misspell`
> Plugin that corrects commonly misspelled words
> [https://github.com/onodera-punpun/micro-misspell-plugin](https://github.com/onodera-punpun/micro-misspell-plugin)
> ✔️
>
> `monokai-dark`
> A dark monokai colorscheme
> [https://github.com/Theodus/micro-monokai-dark](https://github.com/Theodus/micro-monokai-dark)
> ✔️ (provided by default)
>
> `scratch`
> Plugin to create scratch buffers
> [https://github.com/samdmarshall/micro-scratch-plugin](https://github.com/samdmarshall/micro-scratch-plugin)
> ❌
>
> `manipulator`
> Extend text manipulation abilities
> [https://github.com/NicolaiSoeborg/manipulator-plugin](https://github.com/NicolaiSoeborg/manipulator-plugin)
> ✔️
>
> `filemanager`
> A file manager!
> [https://github.com/NicolaiSoeborg/filemanager-plugin](https://github.com/NicolaiSoeborg/filemanager-plugin)
> ✔️
>
> `vcs`
> Mark changed lines in Git or Mercurial repositories
> [https://bitbucket.org/dermetfan/micro-vcs](https://bitbucket.org/dermetfan/micro-vcs)
> ✔️ (provided by default)
>
> `fmt`
> A multi-language formatting plugin
> [https://github.com/sum01/fmt-micro](https://github.com/sum01/fmt-micro)
>
> `joinLines`
> Plugin which joins selected lines or the following with the current
> [https://github.com/Lisiadito/join-lines-plugin](https://github.com/Lisiadito/join-lines-plugin)
>
> `bounce`
>
> Plugin that implements nano-style smart home and bouncing the cursor between matching-brackets
> [https://github.com/deusnefum/micro-bounce](https://github.com/deusnefum/micro-bounce)
>
> `quoter`
> Plugin that allows you to add quotes or brackets around selected text
> [https://github.com/deusnefum/micro-quoter](https://github.com/deusnefum/micro-quoter)
>
> `zigfmt`
> Provides `zig fmt` integration for Zig files
> [https://github.com/squeek502/micro-zigfmt](https://github.com/squeek502/micro-zigfmt)
>
> `jlabbrev`
> Provides backslash abbreviations from the julia prompt
> [https://github.com/MasFlam/jlabbrev](https://github.com/MasFlam/jlabbrev)
>
> `nord-colors`
>
> A set of dark and light colorschemes based on Nord
>
> [https://github.com/KiranWells/micro-nord-tc-colors](https://github.com/KiranWells/micro-nord-tc-colors)
>
> `yapf`
> Runs `yapf` in place when saving python files
> [https://github.com/a11ce/micro-yapf](https://github.com/a11ce/micro-yapf)
>
> `bookmark`
> Bookmark lines and quickly jump between saved positions
> [https://github.com/haqk/micro-bookmark](https://github.com/haqk/micro-bookmark)

> `quickfix`
>
> Adds a functionality similar to VIM quickfix pane
> [https://github.com/serge-v/micro-quickfix](https://github.com/serge-v/micro-quickfix)
>
> `detectindent`
> Automatically detect indentation settings
> [https://github.com/dmaluka/micro-detectindent](https://github.com/dmaluka/micro-detectindent)


```
CursorUp
CursorDown
CursorPageUp
CursorPageDown
CursorLeft
CursorRight
CursorStart
CursorEnd
SelectToStart
SelectToEnd
SelectUp
SelectDown
SelectLeft
SelectRight
SelectToStartOfText
SelectToStartOfTextToggle
WordRight
WordLeft
SelectWordRight
SelectWordLeft
MoveLinesUp
MoveLinesDown
DeleteWordRight
DeleteWordLeft
SelectLine
SelectToStartOfLine
SelectToEndOfLine
InsertNewline
InsertSpace
Backspace
Delete
Center
InsertTab
Save
SaveAll
SaveAs
Find
FindLiteral
FindNext
FindPrevious
Undo
Redo
Copy
CopyLine
Cut
CutLine
DuplicateLine
DeleteLine
IndentSelection
OutdentSelection
OutdentLine
IndentLine
Paste
SelectAll
OpenFile
Start
End
PageUp
PageDown
SelectPageUp
SelectPageDown
HalfPageUp
HalfPageDown
StartOfLine
EndOfLine
StartOfText
StartOfTextToggle
ParagraphPrevious
ParagraphNext
ToggleHelp
ToggleDiffGutter
ToggleRuler
JumpLine
ClearStatus
ShellMode
CommandMode
Quit
QuitAll
AddTab
PreviousTab
NextTab
NextSplit
Unsplit
VSplit
HSplit
PreviousSplit
ToggleMacro
PlayMacro
Suspend (Unix only)
ScrollUp
ScrollDown
SpawnMultiCursor
SpawnMultiCursorUp
SpawnMultiCursorDown
SpawnMultiCursorSelect
RemoveMultiCursor
RemoveAllMultiCursors
SkipMultiCursor
None
JumpToMatchingBrace
Autocomplete
```

The `StartOfTextToggle` and `SelectToStartOfTextToggle` actions toggle between
jumping to the start of the text (first) and start of the line.

You can also bind some mouse actions (these must be bound to mouse buttons)

```
MousePress
MouseMultiCursor
```

Here is the list of all possible keys you can bind:

```
Up
Down
Right
Left
UpLeft
UpRight
DownLeft
DownRight
Center
PageUp
PageDown
Home
End
Insert
Delete
Help
Exit
Clear
Cancel
Print
Pause
Backtab
F1
F2
F3
F4
F5
F6
F7
F8
F9
F10
F11
F12
F13
F14
F15
F16
F17
F18
F19
F20
F21
F22
F23
F24
F25
F26
F27
F28
F29
F30
F31
F32
F33
F34
F35
F36
F37
F38
F39
F40
F41
F42
F43
F44
F45
F46
F47
F48
F49
F50
F51
F52
F53
F54
F55
F56
F57
F58
F59
F60
F61
F62
F63
F64
CtrlSpace
Ctrl-a
Ctrl-b
Ctrl-c
Ctrl-d
Ctrl-e
Ctrl-f
Ctrl-g
Ctrl-h
Ctrl-i
Ctrl-j
Ctrl-k
Ctrl-l
Ctrl-m
Ctrl-n
Ctrl-o
Ctrl-p
Ctrl-q
Ctrl-r
Ctrl-s
Ctrl-t
Ctrl-u
Ctrl-v
Ctrl-w
Ctrl-x
Ctrl-y
Ctrl-z
CtrlLeftSq
CtrlBackslash
CtrlRightSq
CtrlCarat
CtrlUnderscore
Backspace
OldBackspace
Tab
Esc
Escape
Enter
```

You can also bind some mouse buttons (they may be bound to normal actions or
mouse actions)

```
MouseLeft
MouseMiddle
MouseRight
MouseWheelUp
MouseWheelDown
MouseWheelLeft
MouseWheelRight
```

### Key sequences

Key sequences can be bound by specifying valid keys one after another in brackets, such
as `<Ctrl-x><Ctrl-c>`.

#### Default keybinding configuration.

A select few keybindings are different on MacOS compared to other
operating systems. This is because different OSes have different
conventions for text editing defaults.

```json
{
    "Up":             "CursorUp",
    "Down":           "CursorDown",
    "Right":          "CursorRight",
    "Left":           "CursorLeft",
    "ShiftUp":        "SelectUp",
    "ShiftDown":      "SelectDown",
    "ShiftLeft":      "SelectLeft",
    "ShiftRight":     "SelectRight",
    "AltLeft":        "WordLeft", (Mac)
    "AltRight":       "WordRight", (Mac)
    "AltUp":          "MoveLinesUp",
    "AltDown":        "MoveLinesDown",
    "CtrlShiftRight": "SelectWordRight",
    "CtrlShiftLeft":  "SelectWordLeft",
    "AltLeft":        "StartOfTextToggle",
    "AltRight":       "EndOfLine",
    "AltShiftRight":  "SelectWordRight", (Mac)
    "AltShiftLeft":   "SelectWordLeft", (Mac)
    "CtrlLeft":       "StartOfText", (Mac)
    "CtrlRight":      "EndOfLine", (Mac)
    "AltShiftLeft":   "SelectToStartOfTextToggle",
    "CtrlShiftLeft":  "SelectToStartOfTextToggle", (Mac)
    "ShiftHome":      "SelectToStartOfTextToggle",
    "AltShiftRight":  "SelectToEndOfLine",
    "CtrlShiftRight": "SelectToEndOfLine", (Mac)
    "ShiftEnd":       "SelectToEndOfLine",
    "CtrlUp":         "CursorStart",
    "CtrlDown":       "CursorEnd",
    "CtrlShiftUp":    "SelectToStart",
    "CtrlShiftDown":  "SelectToEnd",
    "Alt-{":          "ParagraphPrevious",
    "Alt-}":          "ParagraphNext",
    "Enter":          "InsertNewline",
    "Ctrl-h":          "Backspace",
    "Backspace":      "Backspace",
    "Alt-CtrlH":      "DeleteWordLeft",
    "Alt-Backspace":  "DeleteWordLeft",
    "Tab":            "Autocomplete|IndentSelection|InsertTab",
    "Backtab":        "OutdentSelection|OutdentLine",
    "Ctrl-o":          "OpenFile",
    "Ctrl-s":          "Save",
    "Ctrl-f":          "Find",
    "Ctrl-n":          "FindNext",
    "Ctrl-p":          "FindPrevious",
    "Ctrl-z":          "Undo",
    "Ctrl-y":          "Redo",
    "Ctrl-c":          "CopyLine|Copy",
    "Ctrl-x":          "Cut",
    "Ctrl-k":          "CutLine",
    "Ctrl-d":          "DuplicateLine",
    "Ctrl-v":          "Paste",
    "Ctrl-a":          "SelectAll",
    "Ctrl-t":          "AddTab",
    "Alt-,":           "PreviousTab",
    "Alt-.":           "NextTab",
    "Home":           "StartOfText",
    "End":            "EndOfLine",
    "CtrlHome":       "CursorStart",
    "CtrlEnd":        "CursorEnd",
    "PageUp":         "CursorPageUp",
    "PageDown":       "CursorPageDown",
    "CtrlPageUp":     "PreviousTab",
    "CtrlPageDown":   "NextTab",
    "Ctrl-g":          "ToggleHelp",
    "Alt-g":          "ToggleKeyMenu",
    "Ctrl-r":          "ToggleRuler",
    "Ctrl-l":          "command-edit:goto ",
    "Delete":         "Delete",
    "Ctrl-b":          "ShellMode",
    "Ctrl-q":          "Quit",
    "Ctrl-e":          "CommandMode",
    "Ctrl-w":          "NextSplit",
    "Ctrl-u":          "ToggleMacro",
    "Ctrl-j":          "PlayMacro",
    "Insert":         "ToggleOverwriteMode",

    // Emacs-style keybindings
    "Alt-f": "WordRight",
    "Alt-b": "WordLeft",
    "Alt-a": "StartOfLine",
    "Alt-e": "EndOfLine",

    // Integration with file managers
    "F2":  "Save",
    "F3":  "Find",
    "F4":  "Quit",
    "F7":  "Find",
    "F10": "Quit",
    "Esc": "Escape",

    // Mouse bindings
    "MouseWheelUp":   "ScrollUp",
    "MouseWheelDown": "ScrollDown",
    "MouseLeft":      "MousePress",
    "MouseMiddle":    "PastePrimary",
    "Ctrl-MouseLeft": "MouseMultiCursor",

    "Alt-n":        "SpawnMultiCursor",
    "AltShiftUp":   "SpawnMultiCursorUp",
    "AltShiftDown": "SpawnMultiCursorDown",
    "Alt-m":        "SpawnMultiCursorSelect",
    "Alt-p":        "RemoveMultiCursor",
    "Alt-c":        "RemoveAllMultiCursors",
    "Alt-x":        "SkipMultiCursor",
}
```

#### Pane type bindings

Keybindings can be specified for different pane types as well. For example, to
make a binding that only affects the command bar, use the `command` subgroup:

```
{
    "command": {
        "Ctrl-w": "WordLeft"
    }
}
```

The possible pane types are `buffer` (normal buffer), `command` (command bar),
and `terminal` (terminal pane). The defaults for the command and terminal panes
are given below:

```
{
    "terminal": {
        "<Ctrl-q><Ctrl-q>": "Exit",
        "<Ctrl-e><Ctrl-e>": "CommandMode",
        "<Ctrl-w><Ctrl-w>": "NextSplit"
    },

    "command": {
        "Up":             "HistoryUp",
        "Down":           "HistoryDown",
        "Right":          "CursorRight",
        "Left":           "CursorLeft",
        "ShiftUp":        "SelectUp",
        "ShiftDown":      "SelectDown",
        "ShiftLeft":      "SelectLeft",
        "ShiftRight":     "SelectRight",
        "AltLeft":        "StartOfTextToggle",
        "AltRight":       "EndOfLine",
        "AltUp":          "CursorStart",
        "AltDown":        "CursorEnd",
        "AltShiftRight":  "SelectWordRight",
        "AltShiftLeft":   "SelectWordLeft",
        "CtrlLeft":       "WordLeft",
        "CtrlRight":      "WordRight",
        "CtrlShiftLeft":  "SelectToStartOfTextToggle",
        "ShiftHome":      "SelectToStartOfTextToggle",
        "CtrlShiftRight": "SelectToEndOfLine",
        "ShiftEnd":       "SelectToEndOfLine",
        "CtrlUp":         "CursorStart",
        "CtrlDown":       "CursorEnd",
        "CtrlShiftUp":    "SelectToStart",
        "CtrlShiftDown":  "SelectToEnd",
        "Enter":          "ExecuteCommand",
        "CtrlH":          "Backspace",
        "Backspace":      "Backspace",
        "OldBackspace":   "Backspace",
        "Alt-CtrlH":      "DeleteWordLeft",
        "Alt-Backspace":  "DeleteWordLeft",
        "Tab":            "CommandComplete",
        "Backtab":        "CycleAutocompleteBack",
        "Ctrl-z":         "Undo",
        "Ctrl-y":         "Redo",
        "Ctrl-c":         "CopyLine|Copy",
        "Ctrl-x":         "Cut",
        "Ctrl-k":         "CutLine",
        "Ctrl-v":         "Paste",
        "Home":           "StartOfTextToggle",
        "End":            "EndOfLine",
        "CtrlHome":       "CursorStart",
        "CtrlEnd":        "CursorEnd",
        "Delete":         "Delete",
        "Ctrl-q":         "AbortCommand",
        "Ctrl-e":         "EndOfLine",
        "Ctrl-a":         "StartOfLine",
        "Ctrl-w":         "DeleteWordLeft",
        "Insert":         "ToggleOverwriteMode",
        "Ctrl-b":         "WordLeft",
        "Ctrl-f":         "WordRight",
        "Ctrl-d":         "DeleteWordLeft",
        "Ctrl-m":         "ExecuteCommand",
        "Ctrl-n":         "HistoryDown",
        "Ctrl-p":         "HistoryUp",
        "Ctrl-u":         "SelectToStart",

        // Emacs-style keybindings
        "Alt-f": "WordRight",
        "Alt-b": "WordLeft",
        "Alt-a": "StartOfText",
        "Alt-e": "EndOfLine",

        // Integration with file managers
        "F10": "AbortCommand",
        "Esc": "AbortCommand",

        // Mouse bindings
        "MouseWheelUp":   "HistoryUp",
        "MouseWheelDown": "HistoryDown",
        "MouseLeft":      "MousePress",
        "MouseMiddle":    "PastePrimary"
    }
}
```

## Git and Operational Notes



SYNOPSIS
       git submodule [--quiet] add [<options>] [--] <repository> [<path>]
       add [-b <branch>] [-f|--force] [--name <name>] [--reference <repository>] [--depth <depth>] [--] <repository> [<path>]
       git submodule [--quiet] status [--cached] [--recursive] [--] [<path>...]
       git submodule [--quiet] init [--] [<path>...]
       git submodule [--quiet] deinit [-f|--force] (--all|[--] <path>...)
       git submodule [--quiet] update [<options>] [--] [<path>...]
       git submodule [--quiet] summary [<options>] [--] [<path>...]
       git submodule [--quiet] foreach [--recursive] <command>
       git submodule [--quiet] sync [--recursive] [--] [<path>...]
       git submodule [--quiet] absorbgitdirs [--] [<path>...]


       
OPTIONS
       -q, --quiet
           Only print error messages.

       --all
           This option is only valid for the deinit command. Unregister all submodules in the working tree.

       -b, --branch
           Branch of repository to add as submodule. The name of the branch is recorded as submodule.<name>.branch in .gitmodules for update --remote. A special value
           of .  is used to indicate that the name of the branch in the submodule should be the same name as the current branch in the current repository.

       -f, --force
           This option is only valid for add, deinit and update commands. When running add, allow adding an otherwise ignored submodule path. When running deinit the
           submodule working trees will be removed even if they contain local changes. When running update (only effective with the checkout procedure), throw away
           local changes in submodules when switching to a different commit; and always run a checkout operation in the submodule, even if the commit listed in the
           index of the containing repository matches the commit checked out in the submodule.

       --cached
           This option is only valid for status and summary commands. These commands typically use the commit found in the submodule HEAD, but with this option, the
           commit stored in the index is used instead.

       --files
           This option is only valid for the summary command. This command compares the commit in the index with that in the submodule HEAD when this option is used.

       -n, --summary-limit
           This option is only valid for the summary command. Limit the summary size (number of commits shown in total). Giving 0 will disable the summary; a negative
           number means unlimited (the default). This limit only applies to modified submodules. The size is always limited to 1 for added/deleted/typechanged
           submodules.

        --remote
           This option is only valid for the update command. Instead of using the superproject’s recorded SHA-1 to update the submodule, use the status of the
           submodule’s remote-tracking branch. The remote used is branch’s remote (branch.<name>.remote), defaulting to origin. The remote branch used defaults to
           master, but the branch name may be overridden by setting the submodule.<name>.branch option in either .gitmodules or .git/config (with .git/config taking
           precedence).

           This works for any of the supported update procedures (--checkout, --rebase, etc.). The only change is the source of the target SHA-1. For example,
           submodule update --remote --merge will merge upstream submodule changes into the submodules, while submodule update --merge will merge superproject gitlink
           changes into the submodules.

           In order to ensure a current tracking branch state, update --remote fetches the submodule’s remote repository before calculating the SHA-1. If you don’t
           want to fetch, you should use submodule update --remote --no-fetch.

           Use this option to integrate changes from the upstream subproject with your submodule’s current HEAD. Alternatively, you can run git pull from the
           submodule, which is equivalent except for the remote branch name: update --remote uses the default upstream repository and submodule.<name>.branch, while
           git pull uses the submodule’s branch.<name>.merge. Prefer submodule.<name>.branch if you want to distribute the default upstream branch with the
           superproject and branch.<name>.merge if you want a more native feel while working in the submodule itself.

       -N, --no-fetch
           This option is only valid for the update command. Don’t fetch new objects from the remote site.

       --checkout
           This option is only valid for the update command. Checkout the commit recorded in the superproject on a detached HEAD in the submodule. This is the default behavior, the main use of this option is to override submodule.$name.update when set to a value other than checkout. If the key submodule.$name.update is either not explicitly set or set to checkout, this option is implicit.

           
       --merge
           This option is only valid for the update command. Merge the commit recorded in the superproject into the current branch of the submodule. If this option is
           given, the submodule’s HEAD will not be detached. If a merge failure prevents this process, you will have to resolve the resulting conflicts within the
           submodule with the usual conflict resolution tools. If the key submodule.$name.update is set to merge, this option is implicit.

       --rebase
           This option is only valid for the update command. Rebase the current branch onto the commit recorded in the superproject. If this option is given, the
           submodule’s HEAD will not be detached. If a merge failure prevents this process, you will have to resolve these failures with git-rebase(1). If the key
           submodule.$name.update is set to rebase, this option is implicit.

       ==--init==
           This option is only valid for the update command. Initialize all submodules for which "git submodule init" has not been called so far before updating.

       --name
           This option is only valid for the add command. It sets the submodule’s name to the given string instead of defaulting to its path. The name must be valid as
           a directory name and may not end with a /.

       --reference <repository>
           This option is only valid for add and update commands. These commands sometimes need to clone a remote repository. In this case, this option will be passed
           to the git-clone(1) command.

           NOTE: Do not use this option unless you have read the note for git-clone(1)'s --reference and --shared options carefully.

       ==--recursive==
           This option is only valid for foreach, update, status and sync commands. Traverse submodules recursively. The operation is performed not only in the
           submodules of the current repo, but also in any nested submodules inside those submodules (and so on).

        ==--depth==
           This option is valid for add and update commands. Create a shallow clone with a history truncated to the specified number of revisions. See git-clone(1)

       --[no-]recommend-shallow
           This option is only valid for the update command. The initial clone of a submodule will use the recommended submodule.<name>.shallow as provided by the
           .gitmodules file by default. To ignore the suggestions use --no-recommend-shallow.

       -j <n>, --jobs <n>
           This option is only valid for the update command. Clone new submodules in parallel with as many jobs. Defaults to the submodule.fetchJobs option.

       <path>...
           Paths to submodule(s). When specified this will restrict the command to only operate on the submodules found at the specified paths. (This argument is
           required with add).

FILES
       When initializing submodules, a .gitmodules file in the top-level directory of the containing repository is used to find the url of each submodule. This file
       should be formatted in the same way as $GIT_DIR/config. The key to each submodule url is "submodule.$name.url". See gitmodules(5) for details.

SEE ALSO
       gitsubmodules(7), gitmodules(5).