local PlaceId = game.PlaceId
Oldwolrd = false
if PlaceId == 2753915549 then
	Oldwolrd = true
end
function CheckQuest()
	local Lv = game:GetService("Players").LocalPlayers.Data.Level.Value
	if Lv == 1 or Lv <= 9 then
		Mon = "Bandit [Lv. 5]"
		CFrameMon = CFrame.new(1038.2711181640625, 24.537282943725586, 1550,2586669921875)
	end
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
library:CreateWatermark("SXNUMZ HUB") -- Config แตกนะเดี๋ยวค่อยแก้รอเน็ตมาก่อน By Meow#0001
local CenterHubNo1 = library:CreateWindow("SXNUMZ HUB | BLOX FRUIT",Enum.KeyCoode.RightControl)
local Teb = CenterHubNo1:CreateTab("Main")
local Sector1 = Tab:CreateSector("AutoFarm", "Left")
AutoFarm:AddLabel("AutoFarm Lavel")
Weapon = {}
for i,v in pairs(game:GetService("Players").Backpack:GetChildren()) do
	if v:IsA"Tool" then
		table.insert(Weapon,v.Name)
	end
end
local WE = AutoFarm:AddDropdown("Select Weapon",Weapon,"Select Weapon",false,function(t)
	_G.SelectWeapon = t
end)
	AutoFarm:AddButton("Reset Weapon",function()
		WE:Clear()
			for i,v in pairs(game:GetService("Players").LocalPlayers.Backpack:GetChildren())
			if v:IsA"Tool" then
			WE:Add(v.Name)
			end
		end
end)
AutoFarm:AddToggle("AutoFarm",false,function(t))
	_G.AutoFarm = t
end)
spawn(function()
	while wait() do
		if _G.AutoFarm then
		
		
		end
	end
end)