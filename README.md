# Get Vim
Download and install Vim to your local machine or server without root privilege

##get-vim.sh

What it does:
* Download Vim 7.4 tarball to ~/downloads/
* Extract to ~/downloads/vim74
* Build Vim and install to ~/vim74/
* Add alias vim="~/vim74/bin/vim" to ~/.bash_profile

Requires: bash, wget, tar, make, gcc

Tested on: CentOS, Ubuntu

```
$ wget --no-check-certificate https://raw.githubusercontent.com/NLKNguyen/get-vim/master/get-vim.sh
$ chmod +x get-vim.sh
$ ./get-vim.sh
```

For the alias to take effect, reload bash profile `source ~/.bash_profile`
