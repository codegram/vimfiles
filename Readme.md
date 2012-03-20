# vimfiles

These are the new Codegram vimfiles!

## Installing

Clone this repo:

    $ git clone https://github.com/codegram/vimfiles.git ~/.vim
    $ rm ~/.vimrc && ln -s ~/.vim/vimrc ~/.vimrc

Install [Vundle](https://github.com/gmarik/vundle):

    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Set up your `~/vimrc.local` with your custom plugins, themes, for example:

    " Color theme
    Bundle 'sjl/badwolf'
    colorscheme badwolf

Open up Vim, and issue this command:

    :BundleInstall

TA-DA! Everything's done!

## Custom mappings

* The leader key is `,` (comma).

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
* `<leader>D` closes ALL the buffers.

### Splits
* `,v` opens a new vertical split.
* `<C-h>` switches to the left split.
* `<C-j>` switches to the split below.
* `<C-k>` switches to the split above.
* `<C-l>` switches to the right split.

### Other

* `<F2>` to toggle Paste mode (to paste stuff from the system clipboard).
* `,gb` in Visual mode to perform a `git blame` on the selected lines.
* `,r` runs the current buffer in the current RVM Ruby, including `lib` and
  `test`.
* `<tab>` in Insert mode either indents or autocompletes, depending on the
  context.

## Plug-ins

### [ack](https://github.com/mileszs/ack.vim)

Use Ack to search through your code.

* `,a` performs an Ack search.
* `<C-n>` / `<C-p>`: Rotate among results.

### [vim-autoclose](https://github.com/Townk/vim-autoclose)

Auto-closes, parens, curly braces, everything.

### [ctags](https://github.com/vim-scripts/ctags)

First, `brew install ctags` and run the `tags` command (found in our
[dotfiles](http://github.com/codegram/dotfiles)) on your working directory to
generate the tag list.

* `<C-]>` to go to the definition of the word under the cursor (constant,
  method, whatever
* `<C-p>` to come back.
* `<F7>` / `<F9>` to rotate among multiple definitions of the same tag.

### [ctrlp](https://github.com/kien/ctrlp)

Fuzzy-find and open files at top speed!

* `,o` To open the Ctrl-p window. Start typing a file name and press Enter.
  Plus, if you add a colon and an action it will be performed afterwards
  (`:45` will open the file and go to the line 45).

### [vim-endwise](https://github.com/tpope/vim-endwise)

Puts `end` after a method definition, if clause, etc. (Ruby)

### [vim-fugitive](https://github.com/tpope/vim-powerline)

Use Git from Vim.

* `,gs`: Git status.
* `,gc`: Git commit.

### [vim-powerline](https://github.com/Lokaltog/vim-powerline)

A fancy status line.

### [vim-rails](https://github.com/tpope/vim-rails)

Integration with Rails.

### [vim-surround](https://github.com/tpope/vim-surround)

* `cs"'` changes surround from `"` to `'`.
* `ysiw"` surrounds inside the word with `"`.

### [vim-tcomment](https://github.com/jmartindf/vim-tcomment)

Comments any kind of code.

* `,co`: In visual mode, comments the selected block.
