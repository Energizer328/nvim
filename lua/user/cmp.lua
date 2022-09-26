
local ok, cmp = pcall(require, "cmp")
if not ok then
  vim.notify("could not load package cmp")
  return
end

local ok, luasnip = pcall(require, "luasnip")
if not ok then
  vim.notify("could not load package luasnip")
end

require("luasnip.loaders.from_vscode").lazy_load()

local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

cmp.setup({
  sources = {
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    { name = "luasnip" },
    { name = "path" },
    { name = "buffer", keyword_length = 5 },
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<A-j>"] = cmp.mapping.select_next_item(),
    ["<A-k>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<c-space>"] = cmp.mapping.complete(),
    ["<A-n>"] = cmp.mapping(function(fallback) luasnip.jump(1) end),
  }),
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      vim_item.kind = kind_icons[vim_item.kind]
      vim_item.menu = ({
        luasnip = "[snippet]",
        path = "[path]",
        buffer = "[buffer]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[NVIM LUA]",
      })[entry.source.name]
      return vim_item
    end,
  },
  experimental = {
    ghost_text = true,
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
})
