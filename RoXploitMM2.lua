-- github/RoXploit/Ro-XploitMM2Gui



local DMM2Gui = Instance.new("ScreenGui")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Frame = Instance.new("Frame")
local CloseBtn = Instance.new("TextButton")
local DropShadow = Instance.new("Frame")
local GodMode = Instance.new("TextButton")
local XboxKnife = Instance.new("TextButton")
local UltimateCrasher = Instance.new("TextButton")
local Open = Instance.new("TextButton")
 
DMM2Gui.Name = "DMM2Gui"
DMM2Gui.ResetOnSpawn = false
DMM2Gui.Parent = LocalPlayer.PlayerGui

Frame.Parent = DMM2Gui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(176,75,124)
Frame.Position = UDim2.new(0.5, 0, 0.501, 0)
Frame.Size = UDim2.new(0, 575, 0, 326)
Frame.ZIndex = 0


CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = Frame
CloseBtn.BackgroundColor3 = Color3.new(1, 0.203922, 0.203922)
CloseBtn.Position = UDim2.new(0.85043478, 0, 0, 0)
CloseBtn.Size = UDim2.new(0, 86, 0, 37)
local UICornerCB = Instance.new("UICorner")
UICornerCB.CornerRadius = UDim.new(0,15)
UICornerCB.Parent = CloseBtn
CloseBtn.ZIndex = 2
CloseBtn.Font = Enum.Font.SourceSansBold
CloseBtn.Text = "Close"
CloseBtn.TextColor3 = Color3.new(0, 0, 0)
CloseBtn.TextScaled = true
CloseBtn.TextSize = 14
CloseBtn.TextWrapped = true

DropShadow.Name = "DropShadow"
DropShadow.Parent = CloseBtn
local UICornerDS = Instance.new("UICorner")
UICornerDS.CornerRadius = UDim.new(0,15)
UICornerDS.Parent = DropShadow
DropShadow.BackgroundColor3 = Color3.new(0.454902, 0, 0)
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0, 1, 0, 3)
DropShadow.Size = UDim2.new(1, 0, 1, 0)

GodMode.Name = "GodMode"
GodMode.Parent = Frame
GodMode.BackgroundColor3 = Color3.new(0.305882, 0.607843, 1)
GodMode.BorderSizePixel = 0
GodMode.Position = UDim2.new(0.0208695661, 0, 0.175384611, 0)
GodMode.Size = UDim2.new(0, 200, 0, 50)
GodMode.Font = Enum.Font.SourceSansBold
GodMode.Text = "Toggle God Mode (OOF)"
GodMode.TextColor3 = Color3.new(0, 0, 0)
GodMode.TextScaled = true
GodMode.TextSize = 14
GodMode.TextWrapped = true

XboxKnife.Name = "XboxKnife"
XboxKnife.Parent = Frame
XboxKnife.BackgroundColor3 = Color3.new(0.309804, 0.470588, 1)
XboxKnife.BorderSizePixel = 0
XboxKnife.Position = UDim2.new(0.0208695661, 0, 0.387692302, 0)
XboxKnife.Size = UDim2.new(0, 200, 0, 50)
XboxKnife.Font = Enum.Font.SourceSansBold
XboxKnife.Text = "Free Xbox knife"
XboxKnife.TextColor3 = Color3.new(0, 0, 0)
XboxKnife.TextScaled = true
XboxKnife.TextSize = 14
XboxKnife.TextWrapped = true

UltimateCrasher.Name = "UltimateCrasher"
UltimateCrasher.Parent = Frame
UltimateCrasher.BackgroundColor3 = Color3.new(0.309804, 0.470588, 1)
UltimateCrasher.BorderSizePixel = 0
UltimateCrasher.Position = UDim2.new(0.0208695661, 0, 0.612307727, 0)
UltimateCrasher.Size = UDim2.new(0, 200, 0, 50)
UltimateCrasher.Font = Enum.Font.SourceSansBold
UltimateCrasher.Text = "Ultimate Crasher v1.1"
UltimateCrasher.TextColor3 = Color3.new(0, 0, 0)
UltimateCrasher.TextScaled = true
UltimateCrasher.TextSize = 14
UltimateCrasher.TextWrapped = true

Open.Name = "Open"
Open.Parent = DMM2Gui
Open.BackgroundColor3 = Color3.new(1, 1, 1)
Open.BackgroundTransparency = 1
Open.Position = UDim2.new(0.924000025, 0, 1, 0)
Open.Size = UDim2.new(0, 119, 0, 26)
Open.Font = Enum.Font.SourceSansBold
Open.Text = "OPEN"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true

script.Parent.Open.MouseButton1Click:Connect(function()
	script.Parent.Parent.Parent.Open:TweenPosition(UDim2.new(0.924, 0,0.958, 0),Enum.EasingDirection.In,Enum.EasingStyle.Quint,1.856)
	wait(.64)
	script.Parent.Parent:TweenPosition(UDim2.new(0.5,0,1.45,0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,2)
end)

local toggled = false

script.Parent.GodMode.MouseButton1Click:Connect(function()
	local h = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
		if not toggled then
			toggled = true
			h.MaxHealth = math.huge
			h.Health = h.MaxHealth
			Instance.new("ForceField").Parent = h.Parent
		    script.Parent.Text = "Toggle God Mode (ON)"
			
		else
			toggled = false
			h.MaxHealth = 100
			h.Health = 100
			h.Parent:WaitForChild("ForceField"):Destroy()
			script.Parent.Text = "Toggle God Mode (OFF)"
			
		end
end)



script.Parent.MouseButton1Click:Connect(function()
local Event = game:GetService("ReplicatedStorage").IsXbox
Event:FireServer(A_1)
end)



script.Parent.UltimateCrasher.MouseButton1Click:Connect(function()
	game.StarterGui:SetCore("SendNotification",{
		Title = "Lagging...",
		Text = "Lagging the server, note that if it lags too much it may crash!",
		Duration = 2.7
})
wait(3)
	while wait(.25) do
		Instance.new("Part").Parent = workspace	
		Instance.new("TrussPart").Parent = workspace	
		Instance.new("MeshPart").Parent = workspace	
		Instance.new("WedgePart").Parent = workspace	
		Instance.new("Explosion").Parent = workspace	
	end
end)

function Destroy()
LocalPlayer.PlayerGui:WaitForChild("DMM2Gui"):Destroy()
end



Mouse.KeyDown:Connect(function(key))
	if key == "c" or "C" then -- Quick destroy / Panic button
		Destroy()
	end
	end)

script.Parent.CloseBtn.MouseButton1Click:Connect(function()
	script.Parent:TweenPosition(UDim2.new(0.924, 0,1, 0))
	wait(0.75)
	script.Parent.Parent.Frame:TweenPosition(UDim2.new(0.5,0,0.5,0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,1.35)
end)


