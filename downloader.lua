
local function videoDownload()
    print("What is the URL of the video?:")
    local answer = io.read()
    os.execute("yt-dlp " .. answer .. " -P ~/Music/")
    print("Would you like do download another? [y/N]")
    local another = io.read()
    if another.lower(another) == "y" then
        os.execute("clear")
        videoDownload()
    elseif another.lower(another) == "n" then
        Menu()
    else
        os.execute("exit")
    end
end

local function audioDownload()
    print("What is the URL of the video?:")
    local answer = io.read()
    os.execute("yt-dlp -x " .. answer .. " -P ~/Music/")
    print("Would you like do download another? [y/N]")
    local another = io.read()
    if another.lower(another) == "y" then
        os.execute("clear")
        audioDownload()
    elseif another.lower(another) == "n" then
        Menu()
    else
        os.execute("exit")
    end
end

function Menu()
    os.execute("clear")
    print("What would you like to do?:")
    print("1) Download Video with audio")
    print("2) Download just the audio")
    print("3) Exit Program")
    local answer = io.read()
    if answer == "1" then
        videoDownload()
    elseif answer == "2" then
        audioDownload()
    elseif answer == "3" then
        os.execute("clear")
        os.execute("exit")
    else
        os.execute("clear")
        os.execute("exit")
    end
end
Menu()
