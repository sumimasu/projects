--// funni checkra1n loading screen by spec
local getasset = getsynasset or getcustomasset
makefolder("loadingimages")
writefile("loadingimages/checkra1nlogo.png", game:HttpGet("https://raw.githubusercontent.com/sumimasu/projects/main/2831726.jpg"))

--// make
local funniload = Instance.new("ScreenGui")
local checkra1n = Instance.new("Frame")
local logo = Instance.new("ImageLabel")
local contain = Instance.new("Frame")
local layout = Instance.new("UIListLayout")
local padding = Instance.new("UIPadding")


--// define
funniload.Name = "funniload"
funniload.Parent = game:WaitForChild("CoreGui")

checkra1n.Name = "checkra1n"
checkra1n.Parent = funniload
checkra1n.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
checkra1n.BorderSizePixel = 0
checkra1n.Position = UDim2.new(0, -50, 0, -50)
checkra1n.Size = UDim2.new(1, 100, 1, 100)

logo.Name = "logo"
logo.Parent = checkra1n
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency = 1.000
logo.Position = UDim2.new(0,0,0,0)
logo.Size = UDim2.new(1,0,1,0)
logo.Image = getasset("loadingimages/checkra1nlogo.png")

contain.Name = "contain"
contain.Parent = checkra1n
contain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
contain.BackgroundTransparency = 1.000
contain.Position = UDim2.new(0.0247647353, 0, 0.0423728824, -37)
contain.Size = UDim2.new(0, 100, 0, 100)


layout.Name = "layout"
layout.Parent = contain
layout.SortOrder = Enum.SortOrder.LayoutOrder

padding.Name = "padding"
padding.Parent = contain
padding.PaddingLeft = UDim.new(0, 5)
padding.PaddingTop = UDim.new(0, 4)

--// scrip
local function maketex(text)
	local tex = Instance.new("TextLabel")
	
	tex.Name = "tex"
	tex.Parent = contain
	tex.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tex.BackgroundTransparency = 1.000
	tex.Size = UDim2.new(0, 200, 0, 15)
	tex.Font = Enum.Font.Code
	tex.Text = "# "..text
	tex.TextColor3 = Color3.fromRGB(255, 255, 255)
	tex.TextSize = 14.000
	tex.TextXAlignment = Enum.TextXAlignment.Left
	
	wait(0.025)
end

local tex2make = {"==================","","FBIbl0x 0.9.5", "", "Target: FBI Database", "remade by sumi", "", "Bruteforcing....", "Breaching in..", "Done.", "", "Stealing info...", "", "Done.", "Credits to spec.", "=== Thanks to ===", "spec", " ", "==================", "Credits to spec", "UHH: Found nothing"}

spawn(function()
	for i, v in pairs(tex2make) do
		maketex(v)
	end
end)

local LoadingGui = game:WaitForChild("CoreGui"):WaitForChild("RobloxLoadingGui")
LoadingGui.Enabled = false
LoadingGui:Destroy()

if not game:IsLoaded() then
	game.Loaded:Wait()
end

funniload.Enabled = false
funniload:Destroy()
