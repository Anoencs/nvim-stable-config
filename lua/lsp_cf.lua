-- LSP
local lsp = require("lsp-zero")
lsp.extend_lspconfig()

lsp.preset("recommended")

lsp.setup_servers({
    "gopls",
    "eslint",
    "pylsp",
    "emmet_language_server",
    "eslint",
    "pylsp",
	"rust_analyzer"
})

lsp.set_preferences({
    sign_icons = {}
})

-- config rust analyzer
local nvim_lsp = require("lspconfig")

local on_attach = function(client)
    require'completion'.on_attach(client)
end

-- ts js
nvim_lsp.eslint.setup({
    bin = 'eslint', -- or `eslint_d`
    code_actions = {
        enable = true,
        apply_on_save = {
            enable = true,
            types = { "directive", "problem", "suggestion", "layout" },
        },
        disable_rule_comment = {
            enable = true,
            location = "separate_line", -- or `same_line`
        },
    },
    diagnostics = {
        enable = true,
        report_unused_disable_directives = false,
        run_on = "type", -- or `save`
    },
}) 

-- rust
nvim_lsp.rust_analyzer.setup({
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})



