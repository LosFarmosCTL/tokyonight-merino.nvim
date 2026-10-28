local Config = require("tokyonight-merino.config")

before_each(function()
  vim.o.background = "dark"
  vim.cmd.colorscheme("default")
  Config.setup()
end)

it("did prper init", function()
  assert.same("default", vim.g.colors_name)
  assert.same("dark", vim.o.background)
end)

describe("loading respects vim.o.background", function()
  it("= dark", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("tokyonight-merino")
    assert.same("dark", vim.o.background)
    assert.same("tokyonight-merino", vim.g.colors_name)
  end)

  it("= light", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("tokyonight-merino")
    assert.same("light", vim.o.background)
    assert.same("tokyonight-merino", vim.g.colors_name)
  end)

  it(" and switches to light", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("tokyonight-merino")
    vim.o.background = "light"
    assert.same("light", vim.o.background)
    assert.same("tokyonight-merino", vim.g.colors_name)
  end)

  it(" and switches to dark", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("tokyonight-merino")
    vim.o.background = "dark"
    assert.same("dark", vim.o.background)
    assert.same("tokyonight-merino", vim.g.colors_name)
  end)
end)
