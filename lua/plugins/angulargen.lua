function Generate_popup()
  local api = require "nvim-tree.api"
  local Menu = require("nui.menu")
  local event = require("nui.utils.autocmd").event

  local current_buf = vim.api.nvim_get_current_buf()

  if not api.tree.is_tree_buf(current_buf) then
    print("Not in the file explorer")
    return
  end

  local cursor_row, cursor_col = unpack(vim.api.nvim_win_get_cursor(0))

  local menu = Menu({
    position = {
      relative = "win",
      row = cursor_row + 1,
      col = cursor_col,
    },
    size = {
      width = 25,
      height = 5,
    },
    border = {
      style = "single",
      text = {
        top = "[Angular Schematic]",
        top_align = "center",
      },
    },
    win_options = {
      winhighlight = "Normal:Normal,FloatBorder:Normal",
    },
  }, {
    lines = {
      Menu.item({ value = 1, text = "Generate component" }),
      Menu.item({ value = 2, text = "Generate Service" }),
      Menu.item({ value = 3, text = "Generate Pipe" }),
    },
    max_width = 20,
    keymap = {
      focus_next = { "j", "<Down>", "<Tab>" },
      focus_prev = { "k", "<Up>", "<S-Tab>" },
      close = { "<Esc>", "<C-c>" },
      submit = { "<CR>", "<Space>" },
    },
    on_close = function()
      print("Menu Closed!")
    end,
    on_submit = function(item)

      vim.cmd("wincmd l")
      local Input = require("nui.input")
      local event = require("nui.utils.autocmd").event

      local popup_options = {
        position = "50%",
        size = 20,
        border = {
          style = "rounded",
          text = {
            top = "[Arguments]",
            top_align = "left",
          },
        },
        win_options = {
          winhighlight = "Normal:Normal",
        },
      }

      local input = Input(popup_options, {
        prompt = "> ",
        default_value = item.text,
        on_close = function()
          print("Input closed!")
        end,
        on_submit = function(value)
          print("Value submitted: ", value)
        end,
        on_change = function(value)
          print("Value changed: ", value)
        end,
      })
-- unmount input by pressing `<Esc>` in normal mode
input:map("n", "<Esc>", function()
  input:unmount()
end, { noremap = true })
        input:mount()

      print("Menu Submitted: ", item.value)
    end,
  })

  -- mount the component
  menu:mount()
end

vim.api.nvim_set_keymap('n', 'g', ':lua Generate_popup()<CR>', { noremap = true, silent = true })
