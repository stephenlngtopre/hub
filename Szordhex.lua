local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Szordhex - Checkpoint", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Szordrin igop"})

OrionLib:MakeNotification({
    Name = "Your in!",
    Content = "You logged in as "..Player.Name..".",
    Image = "rbxassetid://4483345998",
    Time = 5
})

_G.Key = "tt"
_G.KeyInput = "string"

function MakeScriptHub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/stephenlngtopre/hub/main/SZORDVIVlV.lua"))()
end


function Clipped()
    OrionLib:MakeNotification({
        Name = "Key",
        Content = "The link has been copied to your clipboard. Please paste the key in browser",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function CorrectKeyNotifications()
    OrionLib:MakeNotification({
        Name = "Correct Key",
        Content = "Welcome To Szordrin Hub",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function WrongKeyNotifications()
    OrionLib:MakeNotification({
        Name = " Wrong Key",
        Content = "To get key u need to pressed the Get key here!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
    Name = "#69",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        _G.KeyInput = Value
    end
})



Tab:AddButton({
    Name = "Check Key!",
    Callback = function()
        if _G.KeyInput == _G.Key then
         MakeScriptHub()
         CorrectKeyNotifications()
     else
        WrongKeyNotifications()
        end
      end
})

Tab:AddButton({
	Name = "Get key here!",
	Callback = function()
      	Clipped()
        setclipboard("https://discord.gg/BHc87QGc7U")
  	end    
})








