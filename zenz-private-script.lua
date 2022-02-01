local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("zek.wtf", "DarkTheme")
local Tab1 = Window:NewTab("Main")
local Section1 = Tab1:NewSection("Main")
local Tab2 = Window:NewTab("Teleports")
local Section2 = Tab2:NewSection("Teleports")
local Tab3 = Window:NewTab("Misc")
local Section3 = Tab3:NewSection("Misc")
local Tab4 = Window:NewTab("UI")
local Section4 = Tab4:NewSection("UI")

game.StarterGui:SetCore("SendNotification", {
    Title = "zek.wtf - Private Script";
    Text = "sup";
    Button1 = "sup";
 })

Section1:NewButton("Realistic Speedglitch (X)", "Automatically Speedglitches for you.", function()
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    local SpeedGlitch = false
    local Wallet = Player.Backpack:FindFirstChild("Wallet")

    local UniversalAnimation = Instance.new("Animation")

    function stopTracks()
        for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
            if (v.Animation.AnimationId:match("rbxassetid")) then
                v:Stop()
            end
        end
    end

    function loadAnimation(id)
        if UniversalAnimation.AnimationId == id then
            stopTracks()
            UniversalAnimation.AnimationId = "1"
        else
            UniversalAnimation.AnimationId = id
            local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
            animationTrack:Play()
        end
    end

    Mouse.KeyDown:Connect(function(Key)
        if Key == "x" then
            SpeedGlitch = not SpeedGlitch
            if SpeedGlitch == true then
                stopTracks()
                loadAnimation("rbxassetid://3189777795")
                wait(1.5)
                Wallet.Parent = Player.Character
                wait(0.15)
                Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
                wait(0.05)
                repeat game:GetService("RunService").Heartbeat:wait()
                    keypress(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keypress(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                until SpeedGlitch == false
            end
        end
    end)
end)

Section1:NewButton("Tryhard Animations", "Gives you the animations tryhards use.", function()
    local Animate = game.Players.LocalPlayer.Character.Animate
    Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
    Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782841498"
    Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
    Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
    Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
    Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
    Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
    game.Players.LocalPlayer.Character.Humanoid.Jump = false
end)


Section1:NewButton("Animation Changer", "Customize your avatar animations to whatever you like.", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FKAPc6Vf"))()
end)

Section1:NewButton("Walkspeed", "Makes your character go skrrrt. (can't be turned off)", function()
    local lp = game:GetService"Players".LocalPlayer
    local SuperSpeed = Instance.new("IntValue",lp.Character.BodyEffects.Movement);SuperSpeed.Name = "SuperSpeed"
    local HulkJump = Instance.new("IntValue",lp.Character.BodyEffects.Movement);HulkJump.Name = "HulkJump"
	 if bodyeffects_folder.Movement:findFirstChild("SuperSpeed") then
		 walkspeed = 300
	end
	if bodyeffects_folder.Movement:findFirstChild("HighJump") then
		 jumppower = 30
	end
end)


-- teleports section

Section2:NewButton("Bank", "Teleports you to the Bank.", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-485.668, 23.631, -285.169)
end)

Section2:NewButton("Casino", "Teleports you to the Casino.", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-905.58, 21.25, -185.11)
end)

Section2:NewButton("Up Hill Guns", "Teleports you to Up Hill Guns.", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(481.72, 48.07, -622.38)
end)

Section2:NewButton("Down Hill Guns", "Teleports you to Up Hill Guns.", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-582, 7.172, -739.015)
end)

Section2:NewButton("Revolver", "Teleports you to where you buy the Revolver.", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-643.06, 21.75, -121.55)
end)

Section2:NewButton("High Medium Armor", "Teleports you to where you buy High Medium Armor.", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-933.92, -28.5, 564.16)
end)

Section2:NewButton("Secret Place #1", "Teleports you to a hidden spot on the map.", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131.16304016113, -58.700073242188, 144.44146728516)
end)

Section2:NewButton("Secret Place #2", "Teleports you to a hidden spot on the map.", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(58.83056640625, -49.700073242188, 124.51362609863)
end)

-- misc tab

Section3:NewButton("Low GFX", "Turns on Low GFX. (better fps and better than the default low gfx)", function()
    for i, v in pairs(workspace:GetDescendants()) do 
		if v:IsA("Texture") then
			v:Destroy()
		elseif v:IsA("Part") then
			v.Material = Enum.Material.Plastic
		elseif v:IsA("Decal") then
			v:Destroy()
		end
	end
end)

Section3:NewButton("Unjail", "Teleports you to where you buy the key to unjail yourself.", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-270.8, 21.75, -243.09)
end)

Section3:NewButton("Show CFrame", "Shows your CFrame Coordinates.", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GdmzzrDz", true))()
end)

Section4:NewKeybind("Toggle UI", "Set the button to toggle the gui on or off.", Enum.KeyCode.V, function()
    Library:ToggleUI()
end)