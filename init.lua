require("haruki.setting")
require("haruki.remap")
require("haruki.plugins")

function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, { ... })
    print(unpack(objects))
end
