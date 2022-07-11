getgenv().Tap = false;
getgenv().InsectverseCrystal = false;
getgenv().DarkCrystal = false;
getgenv().TeenCrystal = false;
getgenv().GalaxyCrystal = false;
getgenv().MagicCrystal = false;
getgenv().AMenCrystal = false;
getgenv().IronCrystal = false;
getgenv().SpeedsterCrystal = false;
getgenv().JaguarCrystal = false;
getgenv().AvatarCrystal = false;
getgenv().RepublicCrystal = false;
getgenv().ThunderCrystal = false;
getgenv().SelectedEnemy = nil;
getgenv().Autofarm = false;

local remotePath = game:GetService("ReplicatedStorage").Remotes
local GothicAutofarm = workspace.Maps:FindFirstChild("Gothic City") -- Haven't used
local VirtualUser=game:service'VirtualUser'

game:service'Players'.LocalPlayer.Idled:connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

function doTap()
spawn(function()
        while Tap == true do
        local args = {[1] = 1}
        remotePath.HeroRemotes.AttackClick:InvokeServer()
        wait()
    end
end)
end

function doInsectVerseCrystal()
    spawn(function()
            while Insectverse == true do
            local args = {[1] = "Manhattan",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

function doGalaxyCrystal()
    spawn(function()
            while GalaxyCrystal == true do
            local args = {[1] = "Zandor",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

function doTeenCrystal()
spawn(function()
    while TeenCrystal == true do
        local args = {[1] = "Hop City",[2] = "Normal"}
        remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
        wait(2.5)
        end
    end)
end

function doDarkCrystal()
    spawn(function()
        while DarkCrystal == true do
            local args = {[1] = "Gothic City",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

function doMagicCrystal()
    spawn(function()
        while MagicCrystal == true do
            local args = {[1] = "Kumar-Raj",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

function doMagicCrystal()
    spawn(function()
        while MagicCrystal == true do
            local args = {[1] = "Kumar-Raj",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

function doAMenCrystal()
    spawn(function()
        while AMenCrystal == true do
            local args = {[1] = "Meteor M",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

function doIronCrystal()
    spawn(function()
        while IronCrystal == true do
            local args = {[1] = "Orion",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

function doSpeedsterCrystal()
    spawn(function()
        while SpeedsterCrystal == true do
            local args = {[1] = "Center City",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

function doSpeedsterCrystal()
    spawn(function()
        while SpeedsterCrystal == true do
            local args = {[1] = "Center City",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

function doJaguarCrystal()
    spawn(function()
        while JaguarCrystal == true do
            local args = {[1] = "Wakonda",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

function doAvatarCrystal()
    spawn(function()
        while AvatarCrystal == true do
            local args = {[1] = "Flame Nation",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

function doRepublicCrystal()
    spawn(function()
        while RepublicCrystal == true do
            local args = {[1] = "Galactic Desert",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

function doThunderCrystal()
    spawn(function()
        while ThunderCrystal == true do
            local args = {[1] = "New Asgord",[2] = "Normal"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end


local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Multiverse Fighters") -- Creates the window
local x = library:CreateWindow("Autofarm")
local y = library:CreateWindow("Autohatch")
local v = library:CreateWindow("Teleports")
local z = library:CreateWindow("DestroyGUI")

local n = w:CreateFolder("General Information")

local l = x:CreateFolder("Autofarm")

local a = x:CreateFolder("Autoclicker")

local f = y:CreateFolder("Crystals")

local k = v:CreateFolder("Teleports")

local j = z:CreateFolder("Destroy")

n:Label("Created By",{
    TextSize = 17; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining  
})

n:Label("OrangeIsTheColour#4868",{
    TextSize = 17; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining  
})

n:Label("UI: Wally Ui v3",{
    TextSize = 17; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining   
})

n:Label("Obfuscator: Moonsec",{
    TextSize = 17; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining   
})

a:Toggle("Auto Tap",function(bool)
    getgenv().Tap = bool
    print("Auto Tap is : ",bool);
    if bool then
        doTap();
    end
end)

f:Toggle("Insect-verse Crystal - 75",function(bool)
    getgenv().InsectverseCrystal = bool
    print("Auto Insect is : ",bool);
    if bool then
        doInsectVerseCrystal();
    end
end)

f:Toggle("Galaxy Crystal - 300",function(bool)
    getgenv().GalaxyCrystal = bool
    print("Auto Galaxy is : ",bool);
    if bool then
        doGalaxyCrystal();
    end
end)

f:Toggle("Teen Crystal - 2.5K",function(bool)
    getgenv().TeenCrystal = bool
    print("Auto Hop is : ",bool);
    if bool then
        doTeenCrystal();
    end
end)

f:Toggle("Dark Crystal - 10K",function(bool)
    getgenv().DarkCrystal = bool
    print("Auto Gothic Hatch is : ",bool);
    if bool then
        doDarkCrystal();
    end
end)

f:Toggle("Magic Crystal - 40K",function(bool)
    getgenv().MagicCrystal = bool
    print("Auto Magic Hatch is : ",bool);
    if bool then
        doMagicCrystal();
    end
end)

f:Toggle("A-Men Crystal - 150K",function(bool)
    getgenv().AMenCrystal = bool
    print("Auto AMen Hatch is : ",bool);
    if bool then
        doAMenCrystal();
    end
end)

f:Toggle("Iron Crystal - 500K",function(bool)
    getgenv().IronCrystal = bool
    print("Auto Iron Hatch is : ",bool);
    if bool then
        doIronCrystal();
    end
end)

f:Toggle("Speedster Crystal - 1.5M",function(bool)
    getgenv().SpeedsterCrystal = bool
    print("Auto Speedster Hatch is : ",bool);
    if bool then
        doSpeedsterCrystal();
    end
end)

f:Toggle("Jaguar Crystal - 5M",function(bool)
    getgenv().JaguarCrystal = bool
    print("Auto Jaguar Hatch is : ",bool);
    if bool then
        doJaguarCrystal();
    end
end)

f:Toggle("Avatar Crystal - 15M",function(bool)
    getgenv().AvatarCrystal = bool
    print("Auto Avatar Hatch is : ",bool);
    if bool then
        doAvatarCrystal();
    end
end)

f:Toggle("Republic Crystal - 60M",function(bool)
    getgenv().RepublicCrystal = bool
    print("Auto Republic Hatch is : ",bool);
    if bool then
        doRepublicCrystal();
    end
end)

f:Toggle("Thunder Crystal - 200M",function(bool)
    getgenv().ThunderCrystal = bool
    print("Auto Thunder Hatch is : ",bool);
    if bool then
        doThunderCrystal();
    end
end)

k:Button("Manhattan",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Maps["Manhattan"].Spawner.Spawn.CFrame
end)

k:Button("Zandor",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Maps["Zandor"].Spawner.Spawn.CFrame
end)

k:Button("Hop City",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Maps["Hop City"].Spawner.Spawn.CFrame
end)

k:Button("Gothic City",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Maps["Gothic City"].Spawner.Spawn.CFrame
end)

k:Button("Kumar-Raj",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Maps["Kumar-Raj"].Spawner.Spawn.CFrame
end)

k:Button("Meteor M",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Maps["Meteor M"].Spawner.Spawn.CFrame
end)

k:Button("Orion",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Maps["Orion"].Spawner.Spawn.CFrame
end)

k:Button("Center City",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Maps["Center City"].Spawner.Spawn.CFrame
end)

k:Button("Wakonda",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Maps["Wakonda"].Spawner.Spawn.CFrame
end)

k:Button("Flame Nation",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Maps["Flame Nation"].Spawner.Spawn.CFrame
end)

k:Button("Galactic Desert",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Maps["Galactic Desert"].Spawner.Spawn.CFrame
end)

k:Button("New Asgord",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Maps["New Asgord"].Spawner.Spawn.CFrame
end)

local Enemys = {}
local Maps = {}
for i,v in pairs(game:GetService("Workspace").Maps:GetChildren()) do
    if v:IsA("Folder") and not table.find(Maps, v.Name) then
        table.insert(Maps, v.Name)
    end
end
for i = 1,#Maps do
    for i,v in pairs(game:GetService("Workspace").Maps[Maps[i]].EnemyFolder:GetChildren()) do
        if v:IsA("Model") and not table.find(Enemys, v.Name) then
            table.insert(Enemys, v.Name)
        end
    end
end
table.sort(Enemys)

l:Dropdown("Mob",Enemys,true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    getgenv().SelectedEnemy = mob
end)

l:Toggle("Autofarm",function(bool)
    getgenv().Autofarm = bool
end)

spawn(function()
    while task.wait() do
        if getgenv().Autofarm then
            for i = 1,#Maps do
                for i,v in pairs(game:GetService("Workspace").Maps[Maps[i]].EnemyFolder:GetChildren()) do
                    if v.Name == getgenv().SelectedEnemy then
                        repeat task.wait()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                            game:GetService("ReplicatedStorage").Remotes.HeroRemotes.AttackEnemy:FireServer(v)
                        until not v.HumanoidRootPart or v.Humanoid.Health <= 0 or not getgenv().Autofarm
                    end
                end
            end
        end
    end
end)

--[[
d:Button("Autofarm selected",function()
    if selectedMobs then
        print(selectedMobs)
    end
end)

b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

b:Button("Button",function()
    print("Elym Winning")
end)

b:Toggle("Toggle",function(bool)
    shared.toggle = bool
    print(shared.toggle)
end)

b:Slider("Slider",{
    min = 10; -- min value of the slider
    max = 50; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    print(value)
end)

b:Dropdown("Dropdown",{"A","B","C"},true,function(mob) --true/false, replaces the current title "Dropdown" with the option that t
    print(mob)
end)

b:Bind("Bind",Enum.KeyCode.C,function() --Default bind
    print("Yes")
end)

b:ColorPicker("ColorPicker",Color3.fromRGB(255,0,0),function(color) --Default color
    print(color)
end)

b:Box("Box","number",function(value) -- "number" or "string"
    print(value)
end) ]]

j:DestroyGui()
