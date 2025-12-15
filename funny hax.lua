
--[[

¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ 
¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ ¦¦¦¦¦¦¦      ¦¦¦¦¦¦¦  ¦¦¦¦¦¦¦        
¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ ¦¦¦¦¦¦¦      ¦¦¦¦¦¦¦  ¦¦¦¦¦¦¦        
¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ ¦¦¦¦¦¦¦      ¦¦¦¦¦¦¦   ¦¦¦¦¦¦¦¦¦¦¦¦  
¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ ¦¦¦¦¦¦¦      ¦¦¦¦¦¦¦         ¦¦¦¦¦¦¦ 
¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ ¦¦¦¦¦¦¦      ¦¦¦¦¦¦¦         ¦¦¦¦¦¦¦ 
¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ ¦¦¦¦¦¦¦      ¦¦¦¦¦¦¦  ¦¦¦¦¦¦¦¦¦¦¦¦¦  
                                                                 
 ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ 
¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ 
¦¦¦¦¦¦¦      ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ 
¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ 
¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ 
¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ 
 ¦¦¦¦¦¦¦¦¦¦¦¦ ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ 
                                  
Hello and welcome to my hacking script thingy yah
basically coolgui and forsaken UI combined
you might be wondering;
'Katt this is a hacking tool why'd you add cooldowns and make it fair'
to that i say 'im not evil im not gonna let hackers run around with a hacking script
and cause UNFAIR terror.' That is why.
]]

-- REQUIRED --

local UserInputService = game:GetService("UserInputService")
local maxSpawns = 5
local spawnCount = 0
local plrgui = game.Players.LocalPlayer.PlayerGui
local scrngui = Instance.new('ScreenGui', plrgui)
local base1 = Instance.new('Frame', scrngui)
local base2 = Instance.new('Frame', base1)
local eventfolder = Instance.new('Folder', scrngui)
local events = {}

-- GLOBAL ABILITY LOCK --
local abilityInUse = false

-- SETUP --
scrngui.Name = "C00LS4K3N"
base1.Position = UDim2.new(1,0,1,0)
base1.Size = UDim2.new(0,0,0,0)
base1.Transparency = 1
base2.Size = UDim2.new(0, 340, 0, 100)
base2.Position = UDim2.new(0, -400, 0, -100)
base2.Transparency = 1

-- FUNCTION --
local function Button(name, pos, cooldown, keybind, callback)
	-- SHORTCUTS / OBJECTS --
	local event = Instance.new('BindableEvent', eventfolder)
	local button = Instance.new('TextButton', base2)
	local frame1 = Instance.new('Frame', button)
	local frame2 = Instance.new('Frame', frame1)
	local cooldowntxt = Instance.new('TextLabel', frame2)
	local nametxt = Instance.new('TextLabel', frame1)
	local buttontxt = Instance.new('TextLabel', frame1)

	-- ACCESSORY --
	local uicorner1 = Instance.new('UICorner', frame1)
	local uicorner2 = Instance.new('UICorner', frame2)
	local uistroke1 = Instance.new('UIStroke', cooldowntxt)
	local uistroke2 = Instance.new('UIStroke', nametxt)
	local uistroke3 = Instance.new('UIStroke', buttontxt)

	-- SETUP --
	event.Name = name
	frame1.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	frame2.BackgroundColor3 = Color3.fromRGB(0,0,0)
	cooldowntxt.TextColor3 = Color3.fromRGB(0,0,0)
	nametxt.TextColor3 = Color3.fromRGB(0,0,0)
	buttontxt.TextColor3 = Color3.fromRGB(0,0,0)

	button.BackgroundTransparency = 1
	button.TextTransparency = 1
	cooldowntxt.BackgroundTransparency = 1
	nametxt.BackgroundTransparency = 1
	buttontxt.BackgroundTransparency = 1

	frame1.Size = UDim2.new(1,0,1,0)
	frame2.Size = UDim2.new(0,90,0,90)
	cooldowntxt.Size = UDim2.new(1,0,1,0)
	nametxt.Size = UDim2.new(0,100,0,25)
	buttontxt.Size = UDim2.new(0,100,0,25)
	button.Size = UDim2.new(0,100,0,100)

	frame1.Position = UDim2.new(0,0,0,0)
	frame2.Position = UDim2.new(0,5,0,5)
	cooldowntxt.Position = UDim2.new(0,0,0,0)
	nametxt.Position = UDim2.new(0,0,0,75)
	buttontxt.Position = UDim2.new(0,0,0,0)

	table.insert(events, event)

	-- ACCESSORIES SETUP --
	uicorner1.CornerRadius = UDim.new(10,10)
	uicorner2.CornerRadius = UDim.new(10,10)
	uistroke1.Thickness = 3
	uistroke2.Thickness = 3
	uistroke3.Thickness = 3
	uistroke1.Color = Color3.fromRGB(255, 0, 0)
	uistroke2.Color = Color3.fromRGB(255, 0, 0)
	uistroke3.Color = Color3.fromRGB(255, 0, 0)
	buttontxt.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json")
	cooldowntxt.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json")
	nametxt.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json")

	-- CUSTOM SETUP --
	buttontxt.Text = keybind
	nametxt.Text = name
	button.Position = pos
	cooldowntxt.Text = ""
	cooldowntxt.TextScaled = false
	cooldowntxt.TextSize = 49
	nametxt.TextScaled = true
	buttontxt.TextScaled = true

	-- FUNCTIONALITY --
	local canUse = true

	local function activate()
		if not canUse or abilityInUse then return end -- check lock
		canUse = false
		abilityInUse = true
		event:Fire() -- fire the local event

		-- start cooldown countdown
		for t = cooldown, 1, -1 do
			cooldowntxt.Text = tostring(t)
			task.wait(1)
		end

		cooldowntxt.Text = ""
		canUse = true
	end

	button.MouseButton1Click:Connect(activate)

	if keybind and keybind ~= "" then
		UserInputService.InputBegan:Connect(function(input, gpe)
			if not gpe and input.KeyCode == Enum.KeyCode[keybind:upper()] then
				activate()
			end
		end)
	end

	-- connect the callback to the event
	if callback then
		event.Event:Connect(function()
			-- wrap callback so lock releases AFTER it finishes
			callback()
			abilityInUse = false
		end)
	end
end

-- Ignore --
for _, spawn in ipairs(workspace:GetDescendants()) do
	if spawn:IsA("SpawnLocation") then
		local higlight = Instance.new('Highlight', spawn)
		higlight.FillColor = Color3.fromRGB(0, 132, 255)
		end
	end

-- ABILITIES --
local function Haxx()
	-- (unchanged, your teleport logic here)
	-- end with abilityInUse freed by wrapper
	local plr = game.Players.LocalPlayer
	local char = plr.Character or plr.CharacterAdded:Wait()
	local hum = char:FindFirstChildOfClass('Humanoid')
	local hrp = char:WaitForChild("HumanoidRootPart")

	local newalkspeed = 4
	local basee1 = Instance.new('Frame', scrngui)
	local frame1 = Instance.new('Frame', basee1)
	local lining = Instance.new('UIStroke', frame1)
	local txt = Instance.new('TextLabel', frame1)

	basee1.Position = UDim2.new(1,0,0,0)
	frame1.Position = UDim2.new(0, -275, 0, 25)
	txt.Position = UDim2.new(0,0,0,0)

	basee1.Size = UDim2.new(0,0,0,0)
	frame1.Size = UDim2.new(0,250,0,150)
	txt.Size = UDim2.new(1,0,1,0)

	basee1.BackgroundTransparency = 1
	frame1.BackgroundTransparency = 0
	txt.BackgroundTransparency = 1

	frame1.BackgroundColor3 = Color3.fromRGB(0,0,0)
	txt.TextColor3 = Color3.new(1,0,0)
	lining.Color = Color3.new(1,0,0)

	lining.Thickness = 10
	txt.TextSize = 70

	lining.LineJoinMode = Enum.LineJoinMode.Miter
	txt.FontFace = Font.new("rbxasset://fonts/families/AccanthisADFStd.json")
	txt.Text = 'H4XX1N'

	hum.WalkSpeed = newalkspeed
	task.wait(2)
	txt.Text = 'H4XX1N.'
	task.wait(2)
	txt.Text = 'H4XX1N..'
	task.wait(2)
	txt.Text = 'H4XX1N...'
	task.wait(2)
	txt.Text = 'H4XX3D!'
	hum.WalkSpeed = 16
	abilityInUse = false

	-- TP to farthest spawn
	local farthestSpawn, farthestDist = nil, -math.huge
	for _, spawn in ipairs(workspace:GetDescendants()) do
		if spawn:IsA("SpawnLocation") then
			local dist = (spawn.Position - hrp.Position).Magnitude
			if dist > farthestDist then
				farthestDist = dist
				farthestSpawn = spawn
			end
		end
	end

	if farthestSpawn then
		hrp.CFrame = farthestSpawn.CFrame + Vector3.new(0, 5, 0)
	end
	
	task.wait(2)
	basee1:Destroy()
end

local function Speedy()
	local hum = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
	hum.WalkSpeed = 32
	task.wait(4)
	hum.WalkSpeed = 16
end

local function newspawn()
	if spawnCount >= maxSpawns then
		warn("Spawn limit reached! ("..maxSpawns..")")
		return
	end

	local char = game.Players.LocalPlayer.Character
	local hrp = char:WaitForChild("HumanoidRootPart")

	local sspawn = Instance.new("SpawnLocation")
	sspawn.Size = Vector3.new(6, .5, 6)
	sspawn.Anchored = true

	local highlight = Instance.new("Highlight")
	highlight.Parent = sspawn
	highlight.FillColor = Color3.fromRGB(0, 132, 255)

	local ray = Ray.new(hrp.Position, Vector3.new(0, -1000, 0))
	local part, pos = workspace:FindPartOnRay(ray, char)

	if pos then
		sspawn.CFrame = CFrame.new(pos - Vector3.new(0, sspawn.Size.Y / 2, 0) + Vector3.new(0, .5, 0))
	else
		sspawn.CFrame = CFrame.new(hrp.Position - Vector3.new(0, sspawn.Size.Y / 2, 0) + Vector3.new(0, 1, 0))
	end

	sspawn.Parent = workspace
	local decal = Instance.new('Decal')
	decal.Texture = 'rbxasset://textures/SpawnLocation.png'
	decal.Parent = sspawn
	sspawn.Material = Enum.Material.SmoothPlastic
	sspawn.CanCollide = false

	spawnCount += 1
end

-- BUTTONS --
Button('Haxx', UDim2.new(0,0,0,0), 36, 'Q', Haxx)
Button('Speedy', UDim2.new(0,120,0,0), 26, 'E', Speedy)
Button('Spawn', UDim2.new(0, 240, 0,0), 20, 'R', newspawn)