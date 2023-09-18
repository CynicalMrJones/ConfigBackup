
local home = os.getenv("HOME")
local alacritty = home .. "/.config/alacritty"
local awesome = home .. "/.config/awesome"
local i3 = home .. "/.config/i3"
local i3status = home .. "/.config/i3status"
local polybar = home .. "/.config/polybar"


local function installer()
    os.execute("sudo apt update && sudo apt upgrade")
    os.execute("sudo apt install awesome i3 polybar vim bashtop htop rofi ranger alacritty nitrogen picom nautilus npm")
end

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

local function menu()
    os.execute("clear")
    print("What would you like to do?")
    print("1) Update .config files from ConfigBackup folder")
    print("2) Run installer for Debian based systems")
    print("3) Create the folders in .config and update them from latest ConfigBackup folder")
    print("4) Exit Program")
    local answer = io.read("*n")
    if answer == 1 then
        copytime()
    elseif answer == 2 then
        installer()
        mkdir()
        copytime()
    elseif answer == 3 then
        mkdir()
        copytime()
    else
        os.execute("exit")
    end
end

menu()
