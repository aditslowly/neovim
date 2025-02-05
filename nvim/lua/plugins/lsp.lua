return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = { "clangd", "--background-index", "--clang-tidy", "--header-insertion=never" },
          filetypes = { "c", "cpp", "objc", "objcpp" },
          root_dir = require("lspconfig.util").root_pattern("compile_commands.json", ".git"),
        },
        ts_ls = {},
        intelephense = {
          settings = {
            intelephense = {
              stubs = {
                "bcmath",
                "bz2",
                "Core",
                "curl",
                "date",
                "dom",
                "fileinfo",
                "filter",
                "gd",
                "gettext",
                "hash",
                "iconv",
                "json",
                "mbstring",
                "openssl",
                "pcntl",
                "pcre",
                "PDO",
                "pdo_mysql",
                "pdo_sqlite",
                "session",
                "SimpleXML",
                "sockets",
                "sodium",
                "standard",
                "tokenizer",
                "xml",
                "zip",
                "zlib",
                "wordpress",
                "woocommerce",
                "acf-pro",
                "acf",
                "polylang",
              },
              environtment = {
                phpVersion = "8.3.15",
              },
            },
          },
        },
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "basic",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
        },
      },
    },
  },
}
