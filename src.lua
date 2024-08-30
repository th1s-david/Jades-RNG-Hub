local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Jade's Hub", HidePremium = true, IntroText = "Made by Dav"})
 Tab1 = Window:MakeTab({
	Name = "Main"
})
Tab1:AddButton({
	Name = "Bypass admin panel security",
	Callback = function()
      if game.Players.LocalPlayer:FindFirstChild("Admin") then	game.Players.LocalPlayer.PlayerScripts.Admin.Enabled = false end
    local z =   game.StarterGui.AdminUI:Clone()
      z.Parent = game.Players.LocalPlayer.PlayerGui
      z.Frame.Visible = true
  	end    
})

Tab1:AddButton({
	Name = "Close admin panel",
	Callback = function()
   game.Players.LocalPlayer.PlayerGui.AdminUI:Destroy()
  	end    
})

Tab1:AddTextbox({
	Name = "Add cash",
	Default = "insert amt here",
	TextDisappear = true,
	Callback = function(Value)
	  game.ReplicatedStorage.Remotes.AddCash:FireServer(Value)
   OrionLib:MakeNotification({
	Name = "Cash",
	Content = "Successfully added cash",
	Time = 5
})
	end	  
})
