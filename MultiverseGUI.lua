getgenv().Tap = false;
getgenv().DarkCrystal = false;
getgenv().TeenCrystal = false;
getgenv().SelectedEnemy = nil;
getgenv().Autofarm = false;

local remotePath = game:GetService("ReplicatedStorage").Remotes
local GothicAutofarm = workspace.Maps:FindFirstChild("Gothic City")
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

function doDarkCrystal()
spawn(function()
    while DarkCrystal == true do
        local args = {[1] = "Gothic City"}
        remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
        wait(2.5)
    end
end)
end

function doTeenCrystal()
spawn(function()
    while TeenCrystal == true do
        local args = {[1] = "Hop City"}
        remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
        wait(2.5)
    end
end)
end

function doGalaxyCrystal()
spawn(function()
        while GalaxyCrystal == true do
            local args = {[1] = "Zandor"}
            remotePath.InventoryRemotes.HeroRoll:InvokeServer(unpack(args))
            wait(2.5)
        end
    end)
end

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Multiverse Fighters") -- Creates the window
local x = library:CreateWindow("Autofarm")
local y = library:CreateWindow("Autohatch")
local v = library:CreateWindow("Teleports")
local z = library:CreateWindow("DestroyGUI")

local l = x:CreateFolder("Autofarm")
local a = x:CreateFolder("Autoclicker")

local f = y:CreateFolder("Crystals")

local j = z:CreateFolder("Destroy")

local k =v:CreateFolder("Teleports")

a:Toggle("Auto Tap",function(bool)
    getgenv().Tap = bool
    print("Auto Tap is : ",bool);
    if bool then
        doTap();
    end
end)

f:Toggle("GalaxyCrystal",function(bool)
    getgenv().GalaxyCrystal = bool
    print("Auto Galaxy is : ",bool);
    if bool then
        doGalaxyCrystal();
    end
end)

f:Toggle("TeenCrystal",function(bool)
    getgenv().TeenCrystal = bool
    print("Auto Hop is : ",bool);
    if bool then
        doTeenCrystal();
    end
end)

f:Toggle("DarkCrystal",function(bool)
    getgenv().DarkCrystal = bool
    print("Auto Gothic Hatch is : ",bool);
    if bool then
        doDarkCrystal();
    end
end)

k:Button("GothicCity",function()
    print("Pressed GothicCity TP")
    doGothicCity();
    remotePath.LocationRemotes.RespawnRequest:FireServer()
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
    local selectedMobs;
d:Dropdown("Mobs",{"Clown","Clown Assassin","Clown Minion"},true,function(value) --true/false, replaces the current title "Dropdown" with the option that t
    selectedMobs = value;
    print(value)
end)

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
