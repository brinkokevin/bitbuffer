local try = require("try")

local specs = {
    "bitbuffer",
    "bit",
    "byte",
    "unsigned",
    "signed",
    "float",
    "string",
    "terminatedstring",
    "setlengthstring",
    "bools"
}

-- local trySpec = require("spec/try")
-- if not trySpec(try) then
--     print("trySpec failed")
--     return
-- end

for _, v in ipairs(specs) do
    local test = require("spec/"..v)
    local _ = test(try.new)
    -- if not passed then
    --     print("Aborted tests because not all previous tests passed")
    --     return
    -- end
end

print(string.format("FINAL COUNT: %i PASSED, %s FAILED, %s DISABLED", try.reportFinal()))
