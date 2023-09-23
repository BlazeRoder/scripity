local workspace = game:GetService("Workspace")
local player = game.Players.LocalPlayer

-- Find the "Stage" folder in the workspace
local stageFolder = workspace:FindFirstChild("Stage")

-- Check if the "Stage" folder exists
if stageFolder then
    -- Iterate through each model in the "Stage" folder
    for i = 1, 40 do
        local stageModel = stageFolder:FindFirstChild("Stage_" .. i)
        
        -- Check if the model exists
        if stageModel then
            local mirror1 = stageModel:FindFirstChild("Mirror_1")
            local mirror2 = stageModel:FindFirstChild("Mirror_2")
            
            -- Check if both "Mirror_1" and "Mirror_2" parts exist in the model
            if mirror1 and mirror2 then
                local boolValue1 = mirror1:FindFirstChild("Value")
                local boolValue2 = mirror2:FindFirstChild("Value")
                
                -- Function to teleport slightly above a mirror
                local function teleportAboveMirror(mirror)
                    local topPosition = mirror.Position + Vector3.new(0, mirror.Size.Y / 2 + 2, 0) -- Adjusted Y coordinate
                    player.Character:SetPrimaryPartCFrame(CFrame.new(topPosition))
                end
                
                -- Check if the "Value" property exists and is set to "true" for Mirror_1
                if boolValue1 and boolValue1.Value == true then
                    teleportAboveMirror(mirror1)
                end
                
                -- Check if the "Value" property exists and is set to "true" for Mirror_2
                if boolValue2 and boolValue2.Value == true then
                    teleportAboveMirror(mirror2)
                end
            end
        end

        -- Wait for 0.5 seconds before moving to the next stage
        wait(0.5)
    end
end

-- Teleport to the specified CFrame after reaching the end of the mirrors
local endCFrame = CFrame.new(642.581787, 12.5, -0.328405231, 1, 0, 0, 0, 1, 0, 0, 0, 1)
player.Character:SetPrimaryPartCFrame(endCFrame)
