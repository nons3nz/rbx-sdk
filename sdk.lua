local sdk = { }

sdk.player = nil
sdk.character = nil
sdk.humanoid = nil
sdk.rootpart = nil
sdk.animate = nil
sdk.rigtype = nil

sdk.head = nil
sdk.leftfoot = nil
sdk.lefthand = nil
sdk.leftlowerarm = nil
sdk.leftlowerleg = nil
sdk.leftupperarm = nil
sdk.leftupperleg = nil
sdk.lowertorso = nil
sdk.rightfoot = nil
sdk.righthand = nil
sdk.rightlowerarm = nil
sdk.rightlowerleg = nil
sdk.rightupperarm = nil
sdk.rightupperleg = nil
sdk.uppertorso = nil

sdk.headR6 = nil
sdk.leftarmR6 = nil
sdk.leftlegR6 = nil
sdk.rightarmR6 = nil
sdk.rightlegR6 = nil
sdk.torsoR6 = nil

sdk.Debris = game:GetService("Debris")
sdk.Players = game:GetService("Players")
sdk.Lighting = game:GetService("Lighting")
sdk.GuiService = game:GetService("GuiService")
sdk.RunService = game:GetService("RunService")
sdk.HttpService = game:GetService("HttpService")
sdk.TweenService = game:GetService("TweenService")
sdk.ReplicatedFirst = game:GetService("ReplicatedFirst")
sdk.ReplicatedStorage = game:GetService("ReplicatedStorage")
sdk.CollectionService = game:GetService("CollectionService")
sdk.VirtualInputManager = game:GetService("VirtualInputManager")
sdk.ContextActionService = game:GetService("ContextActionService")

sdk.initialized = false

task.spawn(function()
    while true do
        task.wait()
    
        sdk.player = sdk.Players.LocalPlayer
        if sdk.player then 
            sdk.character = sdk.player.Character
            if sdk.character then

                sdk.humanoid = sdk.character:FindFirstChild("Humanoid")
                sdk.rootpart = sdk.character:FindFirstChild("HumanoidRootPart")
                sdk.animate = sdk.character:FindFirstChild("Animate")


                if sdk.rigtype == "R6" then
                    sdk.headR6 = sdk.character:FindFirstChild("Head")
                    sdk.leftarmR6 = sdk.character:FindFirstChild("Left Arm")
                    sdk.leftlegR6 = sdk.character:FindFirstChild("Left Leg")
                    sdk.rightarmR6 = sdk.character:FindFirstChild("Right Arm")
                    sdk.rightlegR6 = sdk.character:FindFirstChild("Right Leg")
                    sdk.torsoR6 = sdk.character:FindFirstChild("Torso")
                    
                else
                    sdk.righthand = sdk.character:FindFirstChild("LeftUpperArm")
                    sdk.head = sdk.character:FindFirstChild("Head")
                    sdk.leftfoot = sdk.character:FindFirstChild("LeftFoot")
                    sdk.lefthand = sdk.character:FindFirstChild("LeftHand")
                    sdk.leftlowerarm = sdk.character:FindFirstChild("LeftLowerArm")
                    sdk.leftlowerleg = sdk.character:FindFirstChild("LeftLowerLeg")
                    sdk.leftupperarm = sdk.character:FindFirstChild("LeftUpperArm")
                    sdk.leftupperleg = sdk.character:FindFirstChild("LeftUpperLeg")
                    sdk.lowertorso = sdk.character:FindFirstChild("LowerTorso")
                    sdk.rightfoot = sdk.character:FindFirstChild("RightFoot")
                    sdk.righthand = sdk.character:FindFirstChild("RightHand")
                    sdk.rightlowerarm = sdk.character:FindFirstChild("RightLowerArm")
                    sdk.rightlowerleg = sdk.character:FindFirstChild("RightLowerLeg")
                    sdk.rightupperarm = sdk.character:FindFirstChild("RightUpperArm")
                    sdk.rightupperleg = sdk.character:FindFirstChild("RightUpperLeg")
                    sdk.uppertorso = sdk.character:FindFirstChild("UpperTorso")
                end
                

                if sdk.humanoid and sdk.rootpart then
                    sdk.rigtype = sdk.humanoid.RigType
                    sdk.initialized = true
                end
            end
        end
    end
end)

repeat task.wait() until sdk.initialized == true

print(`🟢 [SDK] Initialized`)

return sdk