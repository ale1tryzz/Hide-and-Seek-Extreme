

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
--[[ 

"RJTheme1"
"RJTheme2"
"RJTheme3"
"RJTheme4"
"RJTheme5"
"RJTheme6"
"RJTheme7"
"RJTheme8"
//////////////////////////////////////////////////////////////////


]]
--[[
local colors = {
   
    SchemeColor = Color3.fromRGB(150, 72, 148),
  
    Background = Color3.fromRGB(15,15,15),
   
    Header = Color3.fromRGB(15,15,15),
   
    TextColor = Color3.fromRGB(255,255,255),
  
    ElementColor = Color3.fromRGB(20, 20, 20)
}
]]

local Window = Library.CreateLib("Hide and Seek Extreme By HochuChlenRomy", "RJTheme3")


local Tab = Window:NewTab("Main")


local Section = Tab:NewSection("Esp Sekeer")


Section:NewLabel("Esp")


Section:NewButton("Esp Seeker", "ButtonInfo", function()
    
function esp(a)
for _, b in pairs(a.Character:children()) do
if b.Name == "FatESP" or b.Name == "FatAlarm" then
b:Destroy()
end
end
if a.Character and not a.Character:FindFirstChild'FatESP' then
for i = 0,5 do
local sg = Instance.new("SurfaceGui")
sg.Face = i
sg.AlwaysOnTop = true
sg.Parent = a.Character
sg.Name = "FatESP"
sg.Adornee = a.Character:FindFirstChild'HumanoidRootPart'
local fr = Instance.new("Frame", sg)
fr.BackgroundColor3 = BrickColor.new('Really red').Color
fr.BorderSizePixel = 0
fr.BackgroundTransparency = 0.55
fr.Size = UDim2.new(1,0,1,0)
end
end
end

while wait() do
ypcall(function()
hum=char:FindFirstChildOfClass'Humanoid'
end)
for _, a in pairs(game:service'Players':players()) do
if a.Character and a:FindFirstChild'PlayerData' and a.PlayerData.It.Value == true then
esp(a)
it = a
wait(.1)
end
end
if it and it.Character and (it.Character.HumanoidRootPart.Position-char.HumanoidRootPart.Position).magnitude <= 125 then
TextLabel_4.Visible = true
Frame_3.Visible = true
hum.WalkSpeed = hum.WalkSpeed * 1.1
alarm:Resume()
else
Frame_3.Visible =false
TextLabel_4.Visible =false
hum.WalkSpeed = 50
alarm:Stop()
end
end

end)

Section:NewLabel("Infinity Jump")


Section:NewButton("InfJump", "ButtonInfo", function()
        game:GetService("UserInputService").JumpRequest:connect(function()
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")       
    end)
end)

Section:NewLabel("Speed")

Section:NewSlider("WalkSpeed", "SliderInfo", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)



local Section = Tab:NewSection("Esp Players")

Section:NewButton("Esp", "ButtonInfo", function()
    local color = BrickColor.new(50,0,250)
local transparency = .8

local Players = game:GetService("Players")
local function _ESP(c)
  repeat wait() until c.PrimaryPart ~= nil
  for i,p in pairs(c:GetChildren()) do
    if p.ClassName == "Part" or p.ClassName == "MeshPart" then
      if p:FindFirstChild("shit") then p.shit:Destroy() end
      local a = Instance.new("BoxHandleAdornment",p)
      a.Name = "shit"
      a.Size = p.Size
      a.Color = color
      a.Transparency = transparency
      a.AlwaysOnTop = true    
      a.Visible = true    
      a.Adornee = p
      a.ZIndex = true    

    end
  end
end
local function ESP()
  for i,v in pairs(Players:GetChildren()) do
    if v ~= game.Players.LocalPlayer then
      if v.Character then
        _ESP(v.Character)
      end
      v.CharacterAdded:Connect(function(chr)
        _ESP(chr)
      end)
    end
  end
  Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(chr)
      _ESP(chr)
    end)  
  end)
end
ESP()
end)


Section:NewLabel("Fly")

Section:NewButton("flying", "ButtonInfo", function()
    -- Made By zack;#6969

-- Instances:

local FlyScript = Instance.new("ScreenGui")
local Gradient = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local Button = Instance.new("TextButton")
local Shadow = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

--Properties:

FlyScript.Name = "FlyScript"
FlyScript.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FlyScript.ResetOnSpawn = false

Gradient.Name = "Gradient"
Gradient.Parent = FlyScript
Gradient.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gradient.BorderColor3 = Color3.fromRGB(27, 42, 53)
Gradient.BorderSizePixel = 0
Gradient.Position = UDim2.new(0.0199062824, 0, 0.781767964, 0)
Gradient.Size = UDim2.new(0, 231, 0, 81)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(57, 104, 252)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(51, 68, 175))}
UIGradient.Parent = Gradient

UICorner.CornerRadius = UDim.new(0.0399999991, 0)
UICorner.Parent = Gradient

Button.Name = "Button"
Button.Parent = Gradient
Button.BackgroundColor3 = Color3.fromRGB(77, 100, 150)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0.0921155736, 0, 0.238353431, 0)
Button.Size = UDim2.new(0, 187, 0, 41)
Button.ZIndex = 2
Button.Font = Enum.Font.GothamSemibold
Button.Text = ""
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextScaled = true
Button.TextSize = 14.000
Button.TextWrapped = true

Shadow.Name = "Shadow"
Shadow.Parent = Button
Shadow.BackgroundColor3 = Color3.fromRGB(53, 69, 103)
Shadow.BorderSizePixel = 0
Shadow.Size = UDim2.new(1, 0, 1, 4)

TextLabel.Parent = Gradient
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.487012982, 0, 0.5, 0)
TextLabel.Size = UDim2.new(0.878787875, -20, 0.728395045, -20)
TextLabel.ZIndex = 2
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Fly"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
Button.MouseButton1Down:connect(function()
  repeat wait()
  until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
  local mouse = game.Players.LocalPlayer:GetMouse()
  repeat wait() until mouse
  local plr = game.Players.LocalPlayer
  local torso = plr.Character.Torso
  local flying = true
  local deb = true
  local ctrl = {f = 0, b = 0, l = 0, r = 0}
  local lastctrl = {f = 0, b = 0, l = 0, r = 0}
  local maxspeed = 50
  local speed = 0

  function Fly()
    local bg = Instance.new("BodyGyro", torso)
    bg.P = 9e4
    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    bg.cframe = torso.CFrame
    local bv = Instance.new("BodyVelocity", torso)
    bv.velocity = Vector3.new(0,0.1,0)
    bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
    repeat wait()
      plr.Character.Humanoid.PlatformStand = true
      if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
        speed = speed+.5+(speed/maxspeed)
        if speed > maxspeed then
          speed = maxspeed
        end
      elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
        speed = speed-1
        if speed < 0 then
          speed = 0
        end
      end
      if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
        bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
        lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
      elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
        bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
      else
        bv.velocity = Vector3.new(0,0.1,0)
      end
      bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
    until not flying
    ctrl = {f = 0, b = 0, l = 0, r = 0}
    lastctrl = {f = 0, b = 0, l = 0, r = 0}
    speed = 0
    bg:Destroy()
    bv:Destroy()
    plr.Character.Humanoid.PlatformStand = false
  end
  mouse.KeyDown:connect(function(key)
    if key:lower() == "e" then
      if flying then flying = false
      else
        flying = true
        Fly()
      end
    elseif key:lower() == "w" then
      ctrl.f = 1
    elseif key:lower() == "s" then
      ctrl.b = -1
    elseif key:lower() == "a" then
      ctrl.l = -1
    elseif key:lower() == "d" then
      ctrl.r = 1
    end
  end)
  mouse.KeyUp:connect(function(key)
    if key:lower() == "w" then
      ctrl.f = 0
    elseif key:lower() == "s" then
      ctrl.b = 0
    elseif key:lower() == "a" then
      ctrl.l = 0
    elseif key:lower() == "d" then
      ctrl.r = 0
    end
  end)
  Fly()

end)
-- Scripts:

local function LHMZZV_fake_script() -- FlyScript.Script 
  local script = Instance.new('Script', FlyScript)

  frame = script.Parent.Gradient -- Take out {}s, and put name of frame
  frame.Draggable = true
  frame.Active = true
  frame.Selectable = true
end
coroutine.wrap(LHMZZV_fake_script)()
end)



local Tab = Window:NewTab("AutoFarm")


local Section = Tab:NewSection("AutoFarm Credits")


Section:NewButton("AutoFarm", "ButtonInfo", function()
    for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Credit' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)
