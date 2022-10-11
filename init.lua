require("user.setting")
require("user.plugins")
require("user.remap")
require("user.cmp")
require("user.lsp")

function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, { ... })
    print(unpack(objects))
end
