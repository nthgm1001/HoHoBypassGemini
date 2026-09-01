local GameId = game.GameId
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local CoreGui = game:GetService("CoreGui")
local Debris = game:GetService("Debris")
local StarterGui = game:GetService("StarterGui")
local ContentProvider = game:GetService("ContentProvider")

repeat task.wait() until game:IsLoaded() and Players.LocalPlayer

plr = Players.LocalPlayer

local isSupport = nil
local GameList = {
	[994732206] = "e4aedc7ccd2bacd83555baa884f3d4b1", -- Blox Fruit
	[7018190066] = "bf149e75708e91ad902bd72e408fae02", -- Dead Rails
	[383310974] = "b83e9255dc81e9392da975a89d26e363", -- Adopt Me
	[4777817887] = "35ad587b07c00b82c218fcf0e55eeea6", -- Blade Ball
	[5477548919] = "0a9bfef9eb03d0cb17dd85451e4be696", -- Honkai Star Rail Simulator
	[5750914919] = "b94343ca266a778e5da8d72e92d4aab5", -- Fisch
	[3359505957] = "095fbd843016a7af1d3a9ee88714c64a", -- Collect All Pets
	[6167925365] = "e220573a9f986e150c6af8d4d1fb9b7c", -- Cong Dong Viet Nam
	[5361032378] = "ff4e04500b94246eaa3f5c5be92a8b4a", -- Sol's RNG
	[7709344486] = "1d5eea7e66ccb5ca4d11c26ff2d4c6b1", -- Steal a Brainrot
	[7326934954] = "0aa67223637322085cfeaf80ae9af69f", -- 99 Nights in the Forest
	[3149100453] = "dbe59157859f6030587fd61ad4faad75", -- Eat Blob Simulator
	[5995470825] = "83363ffca1175ef0c06d4028b77061a4", -- Hypershot
	[358276974] = "23e50d188c7e27477a1c6eacb076e2ba", -- Apocalypse Rising 2
	[7541395924] = "c924e9543f9651c9cc1afabfe1f3de65", -- Build An Island
	[6701277882] = "1c48d56d18692670e5278e1df94997d8", -- Fish It
	[953622098] = "12933a8f18ec406f1ee26bbdc3b73abf", -- Word Bomb
	[7200297228] = "da7549d939f1a496dca0b8d3610196b5", -- Loot Hero
	[7832036655] = "456662bcac892ece28c0062bbe1a7a66", -- Arena Of Blox
	[7061783500] = "2fb6765dd4c0e2894dd107dd9e14c340", -- 2 Player Battle Tycoon
	[9619492068] = "85009d2e16759ccb0fc14e091f75eee3", -- Titan Fishing
	[9186719164] = "282f82c5fbcf3b438888268a4a5fa201", -- Sailor Piece
	[1451439645] = "282f82c5fbcf3b438888268a4a5fa201", -- King Legacy
	[3808081382] = "282f82c5fbcf3b438888268a4a5fa201", -- The Strongest Battleground
	[9338091695] = "282f82c5fbcf3b438888268a4a5fa201", -- Reign Piece
	[66654135] = "282f82c5fbcf3b438888268a4a5fa201", -- Murder Mystery 2
	[6331902150] = "282f82c5fbcf3b438888268a4a5fa201", -- Forsaken
	[8316902627] = "282f82c5fbcf3b438888268a4a5fa201", -- Plant vs Brainrot
	[7671049560] = "282f82c5fbcf3b438888268a4a5fa201", -- The Forge
	[9649298941] = "282f82c5fbcf3b438888268a4a5fa201", -- Survive LAVA for Brainrots!
	[9363735110] = "282f82c5fbcf3b438888268a4a5fa201", -- Escape Tsunami For Brainrot
	[9860860377] = "282f82c5fbcf3b438888268a4a5fa201", -- Anime Limitless
	[9073513091] = "282f82c5fbcf3b438888268a4a5fa201", -- Anime Apocalypse
	[9382839773] = "282f82c5fbcf3b438888268a4a5fa201", -- Lineage Piece
	[9917246399] = "282f82c5fbcf3b438888268a4a5fa201", -- Pirate Piece
	[10200395747] = "e21bc4d95b5db444bf19e8e03a664300", -- Grow A Garden 2
	[7395930870] = "ae046942f7060ae03fe7e55b5a60e8b6", -- Sell Lemons
	[9584852943] = "19a8c4cbd09697c8f9dbc9982ca10393", -- +1 Speed Keyboard Escape
}

for id, scriptid in pairs(GameList) do
	if id == GameId then
		isSupport = scriptid
	end
end

if _G.loadCustomId then
	isSupport = _G.loadCustomId
end

if not isSupport then
	loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/refs/heads/main/ScriptLoadButOlder.lua'))()
	wait(9e9)
end

INFO_DOT25_QUAD = TweenInfo.new(.25,Enum.EasingStyle.Quad)

function CoreGuiAdd(gui)
    repeat wait() until pcall(function()
        gui.Parent = CoreGui
    end)
end

PreloadID = {
	"rbxassetid://4560909609",
	"rbxassetid://12187376174",
}
UI_LOCK = true

do	
	HOHO_Passcheck = Instance.new("ScreenGui")
	INTRO = Instance.new("CanvasGroup")
	Wallpaper = Instance.new("ImageLabel")
	TextHolder = Instance.new("Frame")
	Status = Instance.new("TextLabel")
	UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	Gradient = Instance.new("Frame")
	UIGradient = Instance.new("UIGradient")
	Pattern = Instance.new("ImageLabel")
	Logo = Instance.new("ImageLabel")
	Main = Instance.new("ImageLabel")
	UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	Loader = Instance.new("Frame")
	Content = Instance.new("Frame")
	UIStroke = Instance.new("UIStroke")
	ImageLabel = Instance.new("ImageLabel")
	UIAspectRatioConstraint_1 = Instance.new("UIAspectRatioConstraint")
	UICorner = Instance.new("UICorner")

	HOHO_Passcheck.IgnoreGuiInset = true
	HOHO_Passcheck.ResetOnSpawn = false
	HOHO_Passcheck.Name = "Hоhо_раssсhесk"
	HOHO_Passcheck.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
	HOHO_Passcheck.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    CoreGuiAdd(HOHO_Passcheck)
	HOHO_Passcheck.Enabled = true

	INTRO.BorderSizePixel = 0
	INTRO.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	INTRO.AnchorPoint = Vector2.new(0.5, 0.5)
	INTRO.Size = UDim2.new(0.455271, 0, 0.46186, 0)
	INTRO.ZIndex = 990
	INTRO.Name = "INTRO"
	INTRO.Position = UDim2.new(0.5, 0, 0.5, 0)
	INTRO.BorderColor3 = Color3.fromRGB(0, 0, 0)
	INTRO.Parent = HOHO_Passcheck

	Wallpaper.BorderSizePixel = 0
	Wallpaper.ScaleType = Enum.ScaleType.Fit
	Wallpaper.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Wallpaper.Position = UDim2.new(-0.0361702, 0, -0.158876, 0)
	Wallpaper.Name = "Wallpaper"
	Wallpaper.Image = IS_CUSTOM_UI_MODE and CUSTOM_UI_MODE_DATA.Background or "rbxassetid://16073585738"
	Wallpaper.Size = UDim2.new(1.11064, 0, 1.59989, 0)
	Wallpaper.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Wallpaper.Parent = INTRO

	TextHolder.BorderSizePixel = 0
	TextHolder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	TextHolder.Size = UDim2.new(1, 0, 0.284847, 0)
	TextHolder.BorderColor3 = Color3.fromRGB(30, 30, 30)
	TextHolder.Name = "TextHolder"
	TextHolder.Position = UDim2.new(0, 0, 0.753631, 0)
	TextHolder.Parent = INTRO

	Status.TextWrapped = true
	Status.BorderSizePixel = 0
	Status.TextScaled = true
	Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Status.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Italic)
	Status.Position = UDim2.new(0.120042, 0, 0.254529, 0)
	Status.Name = "Status"
	Status.TextSize = 20
	Status.Size = UDim2.new(0.79993, 0, 0.464041, 0)
	Status.ZIndex = 2
	Status.TextColor3 = Color3.fromRGB(255, 255, 255)
	Status.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Status.Text = IS_CUSTOM_UI_MODE and CUSTOM_UI_MODE_DATA.IntroText or "Preparing your HUB for an amazing experience."
	Status.BackgroundTransparency = 1
	Status.Parent = TextHolder
	Status:SetAttribute("EngText",Status.Text)

	UITextSizeConstraint.MaxTextSize = 20
	UITextSizeConstraint.Parent = Status

	Gradient.BorderSizePixel = 0
	Gradient.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Gradient.Size = UDim2.new(1, 0, 1, 0)
	Gradient.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Gradient.Name = "Gradient"
	Gradient.Position = UDim2.new(0, 0, 2.11993e-08, 0)
	Gradient.Parent = TextHolder

	UIGradient.Transparency = NumberSequence.new{ NumberSequenceKeypoint.new(0, 0.9), NumberSequenceKeypoint.new(1, 0.9) }
	UIGradient.Color = ColorSequence.new{ ColorSequenceKeypoint.new(0, Color3.fromRGB(157, 2, 31)), ColorSequenceKeypoint.new(0.466321, Color3.fromRGB(139.758, 6.07549, 31.0759)), ColorSequenceKeypoint.new(0.797927, Color3.fromRGB(46.7098, 28.0691, 31.4853)), ColorSequenceKeypoint.new(1, Color3.fromRGB(30, 30, 30)) }
	UIGradient.Rotation = -90
	UIGradient.Parent = Gradient

	Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
	Pattern.ScaleType = Enum.ScaleType.Tile
	Pattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pattern.ImageTransparency = 0.6
	Pattern.Position = UDim2.new(6.64996e-05, 0, 0.00124399, 0)
	Pattern.Name = "Pattern"
	Pattern.Image = "rbxassetid://2151741365"
	Pattern.TileSize = UDim2.new(0, 250, 0, 250)
	Pattern.Size = UDim2.new(1, 0, 1, 0)
	Pattern.ZIndex = 0
	Pattern.BackgroundTransparency = 1
	Pattern.Parent = Gradient

	Logo.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Logo.BorderSizePixel = 0
	Logo.ScaleType = Enum.ScaleType.Fit
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.ImageTransparency = 0.5
	Logo.Position = UDim2.new(0.271609, 0, 0.122057, 0)
	Logo.Name = "Logo"
	Logo.Image = IS_CUSTOM_UI_MODE and CUSTOM_UI_MODE_DATA.Logo or "rbxassetid://16073594682"
	Logo.Size = UDim2.new(0.453191, 0, 0.550704, 0)
	Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Logo.ZIndex = 2
	Logo.BackgroundTransparency = 1
	Logo.Parent = INTRO

	Main.BorderSizePixel = 0
	Main.ScaleType = Enum.ScaleType.Fit
	Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Name = "Main"
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.Image = "rbxassetid://16073594682"
	Main.Size = UDim2.new(0.95, 0, 0.95, 0)
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BackgroundTransparency = 1
	Main.Parent = Logo

	UIAspectRatioConstraint.AspectRatio = 2.08357
	UIAspectRatioConstraint.Parent = INTRO

	Loader.BorderSizePixel = 0
	Loader.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	Loader.Size = UDim2.new(0.999948, 0, 0.0285966, 0)
	Loader.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Loader.Name = "Loader"
	Loader.Position = UDim2.new(0, 0, 0.751682, 0)
	Loader.ZIndex = 2
	Loader.Parent = INTRO

	Content.BorderSizePixel = 0
	Content.BackgroundColor3 = Color3.fromRGB(255, 51, 51)
	Content.Size = UDim2.new(0.462745, 0, 1, 0)
	Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Content.Name = "Content"
	Content.Parent = Loader

	UIStroke.Transparency = 0.5
	UIStroke.Parent = Content

	ImageLabel.ImageColor3 = Color3.fromRGB(255, 46, 46)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.Position = UDim2.new(1, 0, .5, 0)
	ImageLabel.AnchorPoint = Vector2.new(.5,.5)
	ImageLabel.Image = "rbxassetid://16073652319"
	ImageLabel.Size = UDim2.new(0.671884, 0, 15.1201, 0)
	ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.Parent = Content

	UIAspectRatioConstraint_1.AspectRatio = 1.49814
	UIAspectRatioConstraint_1.Parent = ImageLabel

	UICorner.CornerRadius = UDim.new(0, 30)
	UICorner.Parent = INTRO

	HOHO_Gen4 = Instance.new("ScreenGui")
	NOTIFICATION_ZONE = Instance.new("Frame")
	UIListLayout_Main = Instance.new("UIListLayout")
	UIAspectRatioConstraint_Main = Instance.new("UIAspectRatioConstraint")

	HOHO_Gen4.IgnoreGuiInset = true
	HOHO_Gen4.Enabled = true
	HOHO_Gen4.ResetOnSpawn = false
	HOHO_Gen4.Name = "Hоhо_gеn4"
	HOHO_Gen4.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
	HOHO_Gen4.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    CoreGuiAdd(HOHO_Gen4)

	NOTIFICATION_ZONE.BorderSizePixel = 0
	NOTIFICATION_ZONE.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	NOTIFICATION_ZONE.AnchorPoint = Vector2.new(1, 1)
	NOTIFICATION_ZONE.Size = UDim2.new(0.213415, 0, 1, 0)
	NOTIFICATION_ZONE.ClipsDescendants = true
	NOTIFICATION_ZONE.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NOTIFICATION_ZONE.BackgroundTransparency = 1
	NOTIFICATION_ZONE.Name = "NOTIFICATION_ZONE"
	NOTIFICATION_ZONE.Position = UDim2.new(1, 0, 1, 0)
	NOTIFICATION_ZONE.Parent = HOHO_Gen4

	UIListLayout_Main.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_Main.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout_Main.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_Main.Parent = NOTIFICATION_ZONE

	UIAspectRatioConstraint_Main.AspectRatio = 0.424757
	UIAspectRatioConstraint_Main.Parent = NOTIFICATION_ZONE

	INTRO.GroupTransparency = 1

    if (isfile("HoHo_Intro.txt") and (tick() - tonumber(readfile("HoHo_Intro.txt"))) >= 86400) or not isfile("HoHo_Intro.txt") then
        writefile("HoHo_Intro.txt", tostring(tick())) 
        
        local preload_content = {}
        for i,v in pairs(HOHO_Passcheck:GetDescendants()) do
            table.insert(preload_content,v)
        end
        for i,v in pairs(PreloadID) do
            table.insert(preload_content,v)
        end
    
        ContentProvider:PreloadAsync(preload_content)
    
        Content.Size = UDim2.new(0,0,1,0)
    
        TweenService:Create(INTRO,INFO_DOT25_QUAD,{GroupTransparency = 0}):Play()
        task.wait(.5)
        for i = 1, #preload_content do
            local asset = preload_content[i]
            local progress = i / #preload_content
            TweenService:Create(Content,TweenInfo.new(.1,Enum.EasingStyle.Quad),{Size = UDim2.new(progress,0,1,0)}):Play()
            task.wait(math.random(1,5)/50)
        end
    
        TweenService:Create(INTRO,INFO_DOT25_QUAD,{GroupTransparency = 1}):Play()
        task.wait(.5)
    end

	local destroyUI = function()
		HOHO_Passcheck:Destroy()
		HOHO_Gen4:Destroy()
	end

	task.spawn(function()
		task.wait(0.2)
		destroyUI()
		local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
		api.script_id = isSupport
		api.load_script()
	end)
end