return {
  disable_defaults = false,
  go='go',
  goimports ='gopls',
  gofmt = 'gopls',
  fillstruct = 'gopls',
  max_line_len = 0,
  tag_transform = false,
  tag_options = 'json=omitempty',
  gotests_template = "",
  gotests_template_dir = "",
  comment_placeholder = '   ',
  icons = {breakpoint = '🧘', currentpos = '🏃'},
  verbose = false,
  lsp_cfg = false,
  lsp_gofumpt = true,
  lsp_on_attach = nil,
  lsp_keymaps = true,
  lsp_codelens = true,
  diagnostic = {
    hdlr = false,
    underline = true,
    virtual_text = { spacing = 0, prefix = '■' },
    signs = true,
    update_in_insert = false,
  },
  lsp_document_formatting = true,
  lsp_inlay_hints = {
    enable = true,
    style = 'eol',
    only_current_line = false,
    only_current_line_autocmd = "CursorHold",
    show_variable_name = true,
    parameter_hints_prefix = "󰊕 ",
    show_parameter_hints = true,
    other_hints_prefix = "=> ",
    max_len_align = false,
    max_len_align_padding = 1,
    right_align = false,
    right_align_padding = 6,
    highlight = "Comment",
  },
  gopls_cmd = nil,
  gopls_remote_auto = true,
  gocoverage_sign = "█",
  sign_priority = 5,
  dap_debug = true,
  dap_debug_keymap = true,
  dap_debug_gui = {},
  dap_debug_vt = { enabled_commands = true, all_frames = true },
  dap_port = 38697,
  dap_timeout = 15,
  dap_retries = 20,
  build_tags = "tag1,tag2",
  textobjects = true,
  test_runner = 'go',
  verbose_tests = true,
  run_in_floaterm = false,
  floaterm = {
    posititon = 'auto',
    width = 0.45,
    height = 0.98,
    title_colors = 'gruvbox',
  },
  trouble = false,
  test_efm = false,
  luasnip = false,
  on_jobstart = function(cmd) _=cmd end,
  on_stdout = function(err, data) _, _ = err, data end,
  on_stderr = function(err, data)  _, _ = err, data  end,
  on_exit = function(code, signal, output)  _, _, _ = code, signal, output  end,
  iferr_vertical_shift = 4
}
