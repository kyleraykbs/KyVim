{ fetchFromGitHub
, vimPlugins
, vimUtils
}:
let
  inherit (vimUtils) buildVimPlugin;
in
with vimPlugins; [
  # CMP / LSP 
  nvim-treesitter.withAllGrammars
  trouble-nvim
  nvim-cmp
  cmp-nvim-lsp
  luasnip
  lsp-zero-nvim
  nvim-lspconfig

  # Fuzzy Find
  plenary-nvim
  telescope-nvim
 
  # Helpers
  which-key-nvim

  # Utils
  toggleterm-nvim
  neo-tree-nvim  

  # Theming
  dressing-nvim
  nvim-web-devicons
  wilder-nvim
  lspkind-nvim

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
