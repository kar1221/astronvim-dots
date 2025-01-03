local opt = {
  focus_on_open = true,
}

return {
  "rmagatti/goto-preview",
  event = "BufEnter",
  config = true,
  keys = {
    {
      "gpd",
      function()
        local preview = require("goto-preview")
        preview.goto_preview_definition(opt)
      end,
      noremap = true,
      desc = "Goto Preview Definition",
    },
    {
      "gpD",
      function()
        local preview = require("goto-preview")
        preview.goto_preview_declaration(opt)
      end,
      noremap = true,
      desc = "Goto Preview Declaration",
    },
    {
      "gpi",
      function()
        local preview = require("goto-preview")
        preview.goto_preview_implementation(opt)
      end,
      noremap = true,
      desc = "Goto Preview Implementation",
    },
    {
      "gpy",
      function()
        local preview = require("goto-preview")
        preview.goto_preview_type_definition(opt)
      end,
      noremap = true,
      desc = "Goto Preview Type Definition",
    },
    {
      "gpr",
      function()
        local preview = require("goto-preview")
        preview.goto_preview_references()
      end,
      noremap = true,
      desc = "Goto Preview References",
    },
    {
      "gP",
      function()
        local preview = require("goto-preview")
        preview.close_all_win()
      end,
      noremap = true,
      desc = "Goto Preview Close All Windows",
    },
  },
}
