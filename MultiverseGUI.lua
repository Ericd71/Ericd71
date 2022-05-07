getgenv().Tap = false;
getgenv().DarkCrystal = false;
getgenv().TeenCrystal = false;
getgenv().AutofarmClown = false;
getgenv().AutofarmDualFace = false;
getgenv().AutofarmPuzzler = false;
getgenv().AutofarmClownBoss = false;
getgenv().AutofarmClownMinion = false;
getgenv().AutofarmClownHenchman = false;
getgenv().AutofarmClownAssassin = false;
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

function doClown()
spawn(function()
    while AutofarmClown == true do
        local args = {[1] = workspace.Maps:FindFirstChild("Gothic City").EnemyFolder.Clown}
    
game:GetService("ReplicatedStorage").Remotes.HeroRemotes.AttackEnemy:FireServer(unpack(args))
wait(3)
    end
end)
end

function doDualFace()
spawn(function()
    while AutofarmDualFace == true do
        local args = {[1] = workspace.Maps:FindFirstChild("Gothic City").EnemyFolder:FindFirstChild("Dual-Face")}
        
game:GetService("ReplicatedStorage").Remotes.HeroRemotes.AttackEnemy:FireServer(unpack(args))
wait(3)
    end
end)
end

function doPuzzler()
spawn(function()
    while AutofarmDualFace == true do
        local args = {[1] = workspace.Maps:FindFirstChild("Gothic City").EnemyFolder.Puzzler}
        game:GetService("ReplicatedStorage").Remotes.HeroRemotes.AttackEnemy:FireServer(unpack(args))
        wait(3)
    end
end)
end

function doClownBoss()
    spawn(function()
        while AutofarmDualFace == true do
            local args = {[1] = workspace.Maps:FindFirstChild("Gothic City").EnemyFolder:FindFirstChild("Clown Boss")}
    game:GetService("ReplicatedStorage").Remotes.HeroRemotes.AttackEnemy:FireServer(unpack(args))
    wait(3)
        end
    end)
end

function doClownMinion()
spawn(function()
    while AutofarmClownMinion == true do
        local args = {[1] = GothicAutofarm.EnemyFolder:FindFirstChild("Clown Minion")}
        remotePath.HeroRemotes.AttackEnemy:FireServer(unpack(args))
wait(3)
    end
end)
end

function doClownHenchman()
    spawn(function()
        while AutofarmClownHenchman == true do
            local args = {[1] = GothicAutofarm.EnemyFolder:FindFirstChild("Clown Henchman")}
            remotePath.HeroRemotes.AttackEnemy:FireServer(unpack(args))
    wait(3)
        end
    end)
    end

function doClownAssassin()
    spawn(function()
        while AutofarmClownAssassin == true do
            local args = {[1] = GothicAutofarm.EnemyFolder:FindFirstChild("Clown Assassin")}
            remotePath.HeroRemotes.AttackEnemy:FireServer(unpack(args))
    wait(3)
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
    while DarkCrystal == true do
        local args = {[1] = "Hop City"}
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
local b = x:CreateFolder("Manhattan")
local c = x:CreateFolder("Zandor")
local d = x:CreateFolder("Hop City")
local e = x:CreateFolder("Gothic City")

local f = y:CreateFolder("Manhattan")
local g = y:CreateFolder("Zandor")
local h = y:CreateFolder("Hop City")
local i = y:CreateFolder("Gothic City")

local j = z:CreateFolder("Destroy")

local k =v:CreateFolder("Teleports")

a:Toggle("Auto Tap",function(bool)
    getgenv().Tap = bool
    print("Auto Tap is : ",bool);
    if bool then
        doTap();
    end
end)

e:Toggle("Clown",function(bool)
    getgenv().AutofarmClown = bool
    print("Clown is : ",bool);
    if bool then
        doClown();
    end
end)

e:Toggle("Dual-Face",function(bool)
    getgenv().AutofarmDualFace = bool
    print("Dual-Face is : ",bool);
    if bool then
        doDualFace();
    end
end)

e:Toggle("Puzzler",function(bool)
    getgenv().AutofarmDualFace = bool
    print("Puzzler is : ",bool);
    if bool then
        doPuzzler();
    end
end)

e:Toggle("ClownBoss",function(bool)
    getgenv().AutofarmClownBoss = bool
    print("ClownBoss is : ",bool);
    if bool then
        doClownBoss();
    end
end)

e:Toggle("ClownMinion",function(bool)
    getgenv().AutofarmClownMinion = bool
    print("ClownMinion is : ",bool);
    if bool then
        doClownMinion();
    end
end)

e:Toggle("ClownHenchman",function(bool)
    getgenv().AutofarmClownMinion = bool
    print("ClownHenchman is : ",bool);
    if bool then
        doClownHenchman();
    end
end)

e:Toggle("ClownAssassin",function(bool)
    getgenv().AutofarmClownAssassin = bool
    print("ClownAssassin is : ",bool);
    if bool then
        doClownAssassin();
    end
end)

h:Toggle("TeenCrystal",function(bool)
    getgenv().TeenCrystal = bool
    print("Auto Hop is : ",bool);
    if bool then
        doTeenCrystal();
    end
end)

i:Toggle("DarkCrystal",function(bool)
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
