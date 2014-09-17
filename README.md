# vimfiles

One-liner:

    rm -fR ~/.vim && git clone https://github.com/codegram/vimfiles.git ~/.vim && rm ~/.vimrc && ln -s ~/.vim/vimrc ~/.vimrc && curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh && vim +NeoBundleInstall +qa! && clear && echo "Done! :)"

## Custom mappings

* The leader key is `,` (comma).

### Files

* `,n` renames current file, asking for the new name.

### Moving
* Arrow keys are disabled.
* `jk` is mapped to `<ESC>`, so you don't have to reach out to `<ESC>`.

### Search
* `,<Space>` clears the search.

### Buffers
* `,w` maps to `:w!`: it saves the current buffer.
* `,q` maps to `:wqa!`: it saves all buffers and quits.
* `<tab>` / `<S-tab>` rotates among open buffers.
* `<leader>d` closes the current buffer.

### Splits
* `,v` opens a new vertical split and switches to it.
* `<C-h>` switches to the left split.
* `<C-j>` switches to the split below.
* `<C-k>` switches to the split above.
* `<C-l>` switches to the right split.

### Other

* `<F2>` to toggle Paste mode (to paste stuff from the system clipboard).

## Plug-ins

### [ag](https://github.com/rking/ag.vim)

Use Ag (the silver searcher) to search through your code.

* `,a` performs an Ag search.
* `<C-n>` / `<C-p>`: Rotate among results.

### [vim-autoclose](https://github.com/Townk/vim-autoclose)

Auto-closes, parens, curly braces, everything.

### [ctags](https://github.com/vim-scripts/ctags)

First, `brew install ctags` and run the `ctags -R .` command on your working
directory to generate the tag list.

* `<C-]>` to go to the definition of the word under the cursor (constant,
  method, whatever
* `<C-p>` to come back.
* `<F7>` / `<F9>` to rotate among multiple definitions of the same tag.
* `<Leader>c` to search among tags with the CtrlP plugin.
* `<Leader>b` to toggle the Tagbar

### [vim-fugitive](https://github.com/tpope/vim-powerline)

Use Git from Vim.

* `,gs`: Git status.
* `,gc`: Git commit.
* `,gb` in visual mode: Git blame.

### [gist.vim](https://github.com/mattn/gist-vim)

* `:Gist [-p|-P]`: Post a [p]rivate or [P]ublic gist with the current buffer.
  You can also run it from Visual mode to post only a part.

### [vim-tcomment](https://github.com/jmartindf/vim-tcomment)

Comments any kind of code.

* `,co`: In visual mode, comments the selected block.