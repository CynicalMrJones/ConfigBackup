
local home = os.getenv("HOME")
local alacritty = home .. "/.config/alacritty"
local awesome = home .. "/.config/awesome"
local i3 = home .. "/.config/i3"
local i3status = home .. "/.config/i3status"
local polybar = home .. "/.config/polybar"

local function mkdir()
   os.execute("mkdir " .. alacritty)
   os.execute("mkdir " .. awesome)
   os.execute("mkdir " .. i3)
   os.execute("mkdir " .. i3status)
   os.execute("mkdir " .. polybar)
end

local function copytime()
    os.execute("cp -v alacritty/alacritty.yml " .. alacritty .. "/")
    os.execute("cp -rv awesome/* " .. awesome .. "/")
    os.execute("cp -v i3/config " .. i3 .. "/")
    os.execute("cp -v i3status/config " .. i3status .. "/")
    os.execute("cp -rv polybar/* " .. polybar .. "/")
    os.execute("cp -v .bashrc " .. home .. "/")
end


local function setup()
    mkdir()
    copytime()
end

setup()
