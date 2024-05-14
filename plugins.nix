{ fetchFromGitHub
, vimPlugins
, vimUtils
}:
let
  inherit (vimUtils) buildVimPlugin;
in
with vimPlugins; [
  # CMP
  nvim-lspconfig
  cmp-nvim-lsp
  cmp-buffer
  cmp-path
  cmp-cmdline
  nvim-cmp

  toggleterm-nvim

  telescope-fzf-native-nvim
  telescope-nvim

  # (buildVimPlugin {
  #   pname = "quickmath-nvim";
  #   version = "2023-03-12";
  #   src = fetchFromGitHub {
  #     owner = "jbyuki";
  #     repo = "quickmath.nvim";
  #     rev = "dcfc5450fa686714817a0d4767299f37f94bdb43";
  #     hash = "sha256-lBQITqTIMAIp48Qq46dNyOaxzJKerO1FWMQZ8XvLq+Y=";
  #   };
  # })
]