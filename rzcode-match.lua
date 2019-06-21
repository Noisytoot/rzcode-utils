#!/usr/bin/env lua
if arg[1] == nil then
   print(arg[0] .. " <code>")
   os.exit(0)
end

local function colour(code, text) return "\27[" .. code .. "m" .. text .. "\27[0m" end
local function bold(text) return colour(1, text) end
local function red(text) return colour(31, text) end
local function green(text) return colour(32, text) end

local pattern = "RZ%u%d+%u%d+"
local rzcode = arg[1]
local match = rzcode:match(pattern)

if match then
   print(bold(green("Matches")))
else
   print(bold(red("Does not match")))
end
print(match)
