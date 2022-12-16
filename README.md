# my-nvim-config
nvim config for js, python and go
## Pre-requisites
### Install nvim 
https://github.com/neovim/neovim/wiki/Installing-Neovim

### Install packer from here
https://github.com/wbthomason/packer.nvim#quickstart


### Getting started

#### If you have any nvim config in
```
~/.config
```

Please remove it and run the following command

```
git clone https://github.com/rameeznkhan/my-nvim-config ~/.config/nvim
```

####
Now open nvim using the following command
nvim .

####
Once you open vim run the following command so that the dependencies are installed correctly
:PackerSync

####
Time for some coffee as your ide is being setup

Once everything is installed hit `q` and the `:q` to quit out of nvim

Now open your favorite project by going in your project directory and doing `nvim .`

For a smooth experience with the language you are working on you should first install LSP[https://github.com/neovim/nvim-lspconfig] server for it. Type in the following command

```
:LspInstallInfo
```

You will see a list of all the possible Language servers 


![Screenshot 2022-12-17 at 12 12 50 AM](https://user-images.githubusercontent.com/3940637/208167146-d994291c-0c70-4feb-b3c9-f1b27aea4079.png)



Install the language server by moving your cursor on top of the options and pressing `i`

We are going to use the following servers

Golang ->/ gopls
JS -> tsserver
Python -> pyright

To verify the language server installed correctly open nvim go to any of the files and type 

```
:LspInfo
```















