# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.
# nvim_termux

# requirement

pkg update && pkg upgrade -y

pkg install -y \
  openssh \
  clang build-essential \
  termux-api \
  lua-language-server stylua \
  wget curl unzip tar gzip \
  nodejs python npm
# allow termux to access the phone's storage
termux-setup-storage
