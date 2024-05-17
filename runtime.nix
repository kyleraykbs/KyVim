{ pkgs, ...}:
with pkgs;
[
  fzf
  git
  lazygit
  nil
  ripgrep
  tree-sitter
  fd
  wl-clipboard
 
  #LANGS
  lua

  #LSPs
  nixd
  nodePackages.pyright
  lua-language-server

  # Other
  fira-code-nerdfont
]
