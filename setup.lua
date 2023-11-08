
local home = os.getenv("HOME")
local alacritty = home .. "/.config/alacritty"
local awesome = home .. "/.config/awesome"
local i3 = home .. "/.config/i3"
local i3status = home .. "/.config/i3status"
local polybar = home .. "/.config/polybar"
local scripts = home .. "/Documents/scripts"


local function installer()
    os.execute("sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg")
    os.execute("echo 'deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main'|sudo tee /etc/apt/sources.list.d/brave-browser-release.list")
    os.execute("sudo apt update && sudo apt upgrade")
    os.execute("sudo apt install awesome i3 polybar vim bashtop htop rofi ranger alacritty nitrogen picom nautilus cmus npm brave-browser")
    os.execute("cd && curl -sS https://starship.rs/install.sh | sh")
    os.execute("cd && git clone https://gitlab.com/phoneybadger/pokemon-colorscripts.git && cd pokemon-colorscripts && sudo ./install.sh")
    os.execute("cd ConfigBackup")
end

local function mkdir()
   os.execute("mkdir " .. alacritty)
   os.execute("mkdir " .. awesome)
   os.execute("mkdir " .. i3)
   os.execute("mkdir " .. i3status)
   os.execute("mkdir " .. polybar)
   os.execute("mkdir " .. scripts)
end

local function copytime()
    os.execute("cp -v alacritty/alacritty.yml " .. alacritty .. "/")
    os.execute("cp -rv awesome/* " .. awesome .. "/")
    os.execute("cp -v i3/config " .. i3 .. "/")
    os.execute("cp -v i3status/config " .. i3status .. "/")
    os.execute("cp -rv polybar/* " .. polybar .. "/")
    os.execute("cp -v .bashrc " .. home .. "/")
    os.execute("cp -rv scripts/* " .. scripts .. "/")
end

local function reversecopy()
    os.execute("cp -v " .. home .. "/.config/alacritty/alacritty.yml " .. home .. "/ConfigBackup/alacritty/")
    os.execute("cp -rv " .. home .. "/.config/awesome/* " .. home .. "/ConfigBackup/awesome/")
    os.execute("cp -v " .. home .. "/.config/i3/config " .. home .. "/ConfigBackup/i3/")
    os.execute("cp -v " .. home .. "/.config/i3status/config " .. home .. "/ConfigBackup/i3status/")
    os.execute("cp -rv " .. home .. "/.config/polybar/* " .. home .. "/ConfigBackup/polybar/")
    os.execute("cp -v  " .. home .. "/.bashrc " .. home .. "/ConfigBackup/")
    os.execute("cp -rv " .. home .. "/Documents/scripts/* " .. home .. "/ConfigBackup/scripts/")
end

local function menu()
    os.execute("clear")
    print(" ----------------------------------------------------------------------------------- ")
    print("|  What would you like to do?                                                       |")
    print("|  1) Update .config files from ConfigBackup folder                                 |")
    print("|  2) Create the folders in .config and update them from latest ConfigBackup folder |")
    print("|  3) Run installer for Debian based systems                                        |")
    print("|  4) Copy files from .config to ConfigBackup                                       |")
    print("|  5) Exit Program                                                                  |")
    print(" ----------------------------------------------------------------------------------- ")
    local answer = io.read("*n")
    if answer == 1 then
        copytime()
    elseif answer == 2 then
        mkdir()
        copytime()
    elseif answer == 3 then
        installer()
        mkdir()
        copytime()
    elseif answer == 4 then
        reversecopy()
    elseif answer == 5 then
    else
        os.execute("exit")
    end
end

menu()
