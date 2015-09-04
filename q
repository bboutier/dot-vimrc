[1mdiff --git a/README.md b/README.md[m
[1mindex 74799b7..2a21864 100644[m
[1m--- a/README.md[m
[1m+++ b/README.md[m
[36m@@ -93,15 +93,14 @@[m [msudo apt-get install vim-gtk               # Ubuntu[m
 ## IDE features[m
 [m
 * [nerdtree](http://github.com/scrooloose/nerdtree) - A tree explorer plugin for navigating the filesystem.[m
[31m-* [tabbar](http://github.com/humiaozuzu/TabBar) -  Add tab bar and quickt tab switch with alt+1~9.[m
 * [tagbar](http://github.com/majutsushi/tagbar) - Displays the tags of the current file in a sidebar.[m
 * [ack-vim](http://github.com/mileszs/ack.vim) - Front for the Perl module App::Ack.[m
 * [ctrlp](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru and tag finder.[m
[31m-* [powerline](https://github.com/Lokaltog/vim-powerline) - The ultimate vim statusline utility.[m
[32m+[m[32m* [airline](https://github.com/bling/vim-airline) - The ultimate vim statusline utility.[m
 * [fugitive](https://github.com/tpope/vim-fugitive/) - a Git wrapper so awesome, it should be illegal.[m
 * [syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks for vim.[m
 [m
[31m-### Dependencie[m
[32m+[m[32m### Dependencies[m
 [m
 ```bash[m
 yaourt -S ack ctags                  # ArchLinux[m
[36m@@ -185,7 +184,7 @@[m [mYAML         | js-yaml       | `npm install -g js-yaml`[m
    - racket[m
    - clojure[m
    - scale[m
[31m-  [m
[32m+[m
 [m
 ## Themes[m
 [m
[1mdiff --git a/bundles.vim b/bundles.vim[m
[1mindex 6a386f7..27f4786 100644[m
[1m--- a/bundles.vim[m
[1m+++ b/bundles.vim[m
[36m@@ -41,12 +41,11 @@[m [mBundle 'nathanaelkane/vim-indent-guides'[m
 " IDE features[m
 "--------------[m
 Bundle 'scrooloose/nerdtree'[m
[31m-Bundle 'humiaozuzu/TabBar'[m
 Bundle 'majutsushi/tagbar'[m
 Bundle 'mileszs/ack.vim'[m
 Bundle 'kien/ctrlp.vim'[m
 Bundle 'tpope/vim-fugitive'[m
[31m-Bundle 'Lokaltog/vim-powerline'[m
[32m+[m[32mBundle 'bling/airline'[m
 Bundle 'scrooloose/syntastic'[m
 Bundle 'bronson/vim-trailing-whitespace'[m
 [m
[1mdiff --git a/vimrc b/vimrc[m
[1mindex 48bee3d..d8a1c7f 100644[m
[1m--- a/vimrc[m
[1m+++ b/vimrc[m
[36m@@ -157,8 +157,9 @@[m [mlet NERDCompactSexyComs=1[m
 " ZenCoding[m
 let g:user_emmet_expandabbr_key='<C-j>'[m
 [m
[31m-" powerline[m
[31m-"let g:Powerline_symbols = 'fancy'[m
[32m+[m[32m" airline[m
[32m+[m[32mlet g:airline#extensions#tabline#enabled = 1[m
[32m+[m[32mlet g:airline_powerline_fonts=1[m
 [m
 " NeoComplCache[m
 let g:neocomplcache_enable_at_startup=1[m
[36m@@ -190,6 +191,7 @@[m [mlet g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'[m
 " let g:SuperTabDefultCompletionType='context'[m
 let g:SuperTabDefaultCompletionType = '<C-X><C-U>'[m
 let g:SuperTabRetainCompletionType=2[m
[32m+[m[32m" set guifont=Ubuntu\ Mono\ derivative\ Powerline:10[m
 [m
 " ctrlp[m
 set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux[m
