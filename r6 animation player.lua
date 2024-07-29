-- Instances: 28 | Scripts: 0 | Modules: 0
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ResetOnSpawn"] = false;

-- StarterGui.ScreenGui.MainUI
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 363, 0, 242);
G2L["2"]["Position"] = UDim2.new(0.4107, 0, 0.39551, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[MainUI]];

local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    G2L["2"].Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

G2L["2"].InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = G2L["2"].Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

G2L["2"].InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)

-- StarterGui.ScreenGui.MainUI.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.ScreenGui.MainUI.ListUI
G2L["4"] = Instance.new("Frame", G2L["2"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["Size"] = UDim2.new(0, 175, 0, 299);
G2L["4"]["Position"] = UDim2.new(1.26997, 0, 0.61455, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[ListUI]];

-- StarterGui.ScreenGui.MainUI.ListUI.UICorner
G2L["5"] = Instance.new("UICorner", G2L["4"]);
G2L["5"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.ScreenGui.MainUI.ListUI.ScrollingFrame
G2L["6"] = Instance.new("ScrollingFrame", G2L["4"]);
G2L["6"]["Active"] = true;
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["6"]["Size"] = UDim2.new(0, 160, 0, 242);
G2L["6"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Position"] = UDim2.new(0.49916, 0, 0.56934, 0);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["CanvasSize"] = UDim2.new(0, 0, 0, 48 * 28)
G2L["6"]["ScrollBarThickness"] = 5;
G2L["6"]["BackgroundTransparency"] = 1;

local entries = {
    {name = "Bang", id = "148840371", espeed = "10", loop = false},
    {name = "Head Throw", id = "35154961", espeed = "1", loop = false},
    {name = "Floating Head", id = "121572214", espeed = "1", loop = false},
    {name = "Crouch", id = "182724289", espeed = "1", loop = false},
    {name = "Floor Crawl", id = "282574440", espeed = "1", loop = false},
    {name = "Dino Walk", id = "204328711", espeed = "1", loop = false},
    {name = "Jumping Jacks", id = "429681631", espeed = "1", loop = false},
    {name = "Loop Head", id = "35154961", espeed = "1", loop = true},
    {name = "Hero Jump", id = "184574340", espeed = "1", loop = false},
    {name = "Faint", id = "181526230", espeed = "1", loop = false},
    {name = "Floor Faint", id = "181525546", espeed = "1", loop = false},
    {name = "Super Faint", id = "181525546", espeed = "1", loop = false},
    {name = "Levitate", id = "313762630", espeed = "1", loop = false},
    {name = "Dab", id = "183412246", espeed = "1", loop = false},
    {name = "Spin", id = "188632011", espeed = "1", loop = false},
    {name = "FloatSit", id = "179224234", espeed = "1", loop = false},
    {name = "Moving Dance", id = "429703734", espeed = "1", loop = false},
    {name = "Weird Move", id = "215384594", espeed = "1", loop = false},
    {name = "Clone Illusion", id = "215384594", espeed = "1", loop = false},
    {name = "Glitch Levitate", id = "313762630", espeed = "1", loop = false},
    {name = "Spin Dance", id = "429730430", espeed = "1", loop = false},
    {name = "Moon Dance", id = "45834924", espeed = "1", loop = false},
    {name = "Moon Dance 2", id = "27789359", espeed = "1", loop = false},
    {name = "Full Punch", id = "204062532", espeed = "1", loop = false},
    {name = "Spin Dance 2", id = "186934910", espeed = "1", loop = false},
    {name = "Bow Down", id = "204292303", espeed = "1", loop = false},
    {name = "Sword Slam", id = "204295235", espeed = "1", loop = false},
    {name = "Loop Slam", id = "204295235", espeed = "1", loop = true},
    {name = "Mega Insane", id = "184574340", espeed = "1", loop = false},
    {name = "Super Punch", id = "126753849", espeed = "1", loop = false},
    {name = "Full Swing", id = "218504594", espeed = "1", loop = false},
    {name = "Arm Turbine", id = "259438880", espeed = "1", loop = false},
    {name = "BarrelRoll", id = "136801964", espeed = "1", loop = false},
    {name = "Scared", id = "180612465", espeed = "1", loop = false},
    {name = "Insane", id = "33796059", espeed = "100", loop = false},
    {name = "Arm Detach", id = "33169583", espeed = "1", loop = false},
    {name = "Sword Slice", id = "35978879", espeed = "1", loop = false},
    {name = "Insane Arms", id = "27432691", espeed = "100", loop = false},
    {name = "Weird Sway", id = "248336677", espeed = "1", loop = false},
    {name = "Weird Float", id = "248336459", espeed = "1", loop = false},
    {name = "Weird Pose", id = "248336163", espeed = "1", loop = false},
    {name = "Happy Dance", id = "248335946", espeed = "1", loop = false},
    {name = "Scream", id = "180611870", espeed = "1", loop = false},
    {name = "Pinch Nose", id = "30235165", espeed = "1", loop = false},
    {name = "Goal!", id = "28488254", espeed = "1", loop = false},
    {name = "Insane Legs", id = "87986341", espeed = "10", loop = false},
    {name = "Roar", id = "163209885", espeed = "1", loop = false},
    {name = "Zombie Arms", id = "183294396", espeed = "1", loop = false},
}

for i, entry in ipairs(entries) do
    G2L["1d"] = Instance.new("TextButton", G2L["6"]);
    G2L["1d"].Size = UDim2.new(0.98, -10, 0, 23)
    G2L["1d"].Position = UDim2.new(0, 5, 0.001, (i-1) * 28)
    G2L["1d"].Text = entry.name
    G2L["1d"]["TextSize"] = 15;
    G2L["1d"]["FontFace"] = Font.new([[rbxasset://fonts/families/JosefinSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);

    G2L["1ed"] = Instance.new("UIStroke", G2L["1d"]);
    G2L["1ed"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    G2L["1ed"]["Color"] = Color3.fromRGB(0,0,0);

    G2L["1dd"] = Instance.new("UIGradient", G2L["1d"]);
    G2L["1dd"]["Rotation"] = 90;
    G2L["1dd"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(128, 128, 128)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

    -- Add UICorner to List Entry Button for rounded corners
    G2L["1e"] = Instance.new("UICorner", G2L["1d"]);
    G2L["1e"]["CornerRadius"] = UDim.new(0, 5)
    G2L["1e"]["Parent"] = G2L["1d"]

    G2L["1d"].MouseButton1Click:Connect(function()
        G2L["15"]["Text"] = entry.id
        G2L["18"]["Text"] = entry.espeed
    end)
end

-- StarterGui.ScreenGui.MainUI.ListUI.UIGradient
G2L["7"] = Instance.new("UIGradient", G2L["4"]);
G2L["7"]["Rotation"] = 45;
G2L["7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(90, 90, 90)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- StarterGui.ScreenGui.MainUI.ListUI.UIStroke
G2L["8"] = Instance.new("UIStroke", G2L["4"]);
G2L["8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["8"]["Color"] = Color3.fromRGB(123, 123, 123);

-- StarterGui.ScreenGui.MainUI.ListUI.TextLabel
G2L["9"] = Instance.new("TextLabel", G2L["4"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["TextSize"] = 20;
G2L["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/JosefinSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Size"] = UDim2.new(0, 121, 0, 33);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Animations]];
G2L["9"]["Position"] = UDim2.new(0.15243, 0, 0.02558, 0);

-- StarterGui.ScreenGui.MainUI.NotifUI
G2L["a"] = Instance.new("Frame", G2L["2"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["a"]["Size"] = UDim2.new(0, 362, 0, 46);
G2L["a"]["Position"] = UDim2.new(0.50089, 0, 1.1368, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Name"] = [[NotifUI]];

-- StarterGui.ScreenGui.MainUI.NotifUI.UICorner
G2L["b"] = Instance.new("UICorner", G2L["a"]);
G2L["b"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.ScreenGui.MainUI.NotifUI.UIGradient
G2L["c"] = Instance.new("UIGradient", G2L["a"]);
G2L["c"]["Rotation"] = 90;
G2L["c"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(128, 128, 128)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- StarterGui.ScreenGui.MainUI.NotifUI.UIStroke
G2L["d"] = Instance.new("UIStroke", G2L["a"]);
G2L["d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["d"]["Color"] = Color3.fromRGB(123, 123, 123);

-- StarterGui.ScreenGui.MainUI.UIGradient
G2L["e"] = Instance.new("UIGradient", G2L["2"]);
G2L["e"]["Rotation"] = 45;
G2L["e"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(90, 90, 90)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- StarterGui.ScreenGui.MainUI.UIStroke
G2L["f"] = Instance.new("UIStroke", G2L["2"]);
G2L["f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["f"]["Color"] = Color3.fromRGB(123, 123, 123);

-- StarterGui.ScreenGui.MainUI.TextLabel
G2L["10"] = Instance.new("TextLabel", G2L["2"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["TextSize"] = 20;
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/JosefinSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["10"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["BackgroundTransparency"] = 1;
G2L["10"]["Size"] = UDim2.new(0, 214, 0, 33);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[Animation player]];
G2L["10"]["Position"] = UDim2.new(0.20386, 0, 0.02893, 0);

-- StarterGui.ScreenGui.MainUI.TextButton
G2L["11"] = Instance.new("TextButton", G2L["2"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextSize"] = 20;
G2L["11"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/JosefinSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["Size"] = UDim2.new(0, 200, 0, 34);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[Play]];
G2L["11"]["Position"] = UDim2.new(0.22314, 0, 0.82231, 0);

local animationtrack
local playing = false

G2L["11"].MouseButton1Click:Connect(function()
    local assetId = tonumber(G2L["15"].Text)
    local speed = tonumber(G2L["18"].Text) or 1
    if not playing then
        if assetId and speed then
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:WaitForChild("Humanoid")
            local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)

            local animation = Instance.new("Animation")
            animation.AnimationId = "rbxassetid://" .. assetId

            animationTrack = animator:LoadAnimation(animation)
            animationTrack:Play()
            animationTrack:AdjustSpeed(speed)

            animationTrack.Stopped:Connect(function()
                G2L["11"].Text = [[Play]]
                playing = false
            end)

            G2L["11"].Text = [[Stop]]
            playing = true
        else
            warn("Invalid asset ID or speed")
        end
    else
        if animationTrack then
            animationTrack:Stop()
            wait()
            animationTrack:Stop()
            wait()
            animationTrack:Stop()
            wait()
            animationTrack:Stop()
        end

        G2L["11"].Text = [[Play]]
        playing = false
    end
end)

-- StarterGui.ScreenGui.MainUI.TextButton.UICorner
G2L["12"] = Instance.new("UICorner", G2L["11"]);
G2L["12"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.ScreenGui.MainUI.TextButton.UIGradient
G2L["13"] = Instance.new("UIGradient", G2L["11"]);
G2L["13"]["Rotation"] = 90;
G2L["13"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(128, 128, 128)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(255, 255, 255))};

-- StarterGui.ScreenGui.MainUI.TextButton.UIStroke
G2L["14"] = Instance.new("UIStroke", G2L["11"]);
G2L["14"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["14"]["Color"] = Color3.fromRGB(123, 123, 123);

-- StarterGui.ScreenGui.MainUI.TextBox
G2L["15"] = Instance.new("TextBox", G2L["2"]);
G2L["15"]["CursorPosition"] = -1;
G2L["15"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["PlaceholderColor3"] = Color3.fromRGB(125, 125, 125);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextSize"] = 15;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/JosefinSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["15"]["PlaceholderText"] = [[Enter Asset ID]];
G2L["15"]["Size"] = UDim2.new(0, 200, 0, 38);
G2L["15"]["Position"] = UDim2.new(0.22314, 0, 0.19421, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Text"] = [[Asset ID]];

-- StarterGui.ScreenGui.MainUI.TextBox.UICorner
G2L["16"] = Instance.new("UICorner", G2L["15"]);
G2L["16"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.ScreenGui.MainUI.TextBox.UIStroke
G2L["17"] = Instance.new("UIStroke", G2L["15"]);
G2L["17"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["17"]["Color"] = Color3.fromRGB(123, 123, 123);

-- StarterGui.ScreenGui.MainUI.TextBox
G2L["18"] = Instance.new("TextBox", G2L["2"]);
G2L["18"]["CursorPosition"] = -1;
G2L["18"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["PlaceholderColor3"] = Color3.fromRGB(125, 125, 125);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["TextSize"] = 15;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["FontFace"] = Font.new([[rbxasset://fonts/families/JosefinSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["18"]["PlaceholderText"] = [[Leave blank for default]];
G2L["18"]["Size"] = UDim2.new(0, 200, 0, 38);
G2L["18"]["Position"] = UDim2.new(0.22314, 0, 0.3843, 0);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Text"] = [[Animation Speed]];

-- StarterGui.ScreenGui.MainUI.TextBox.UICorner
G2L["19"] = Instance.new("UICorner", G2L["18"]);
G2L["19"]["CornerRadius"] = UDim.new(0, 5);

-- StarterGui.ScreenGui.MainUI.TextBox.UIStroke
G2L["1a"] = Instance.new("UIStroke", G2L["18"]);
G2L["1a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["1a"]["Color"] = Color3.fromRGB(123, 123, 123);

-- StarterGui.ScreenGui.MainUI.TextLabel
G2L["1b"] = Instance.new("TextLabel", G2L["2"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["TextSize"] = 12;
G2L["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/JosefinSans.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["BackgroundTransparency"] = 1;
G2L["1b"]["Size"] = UDim2.new(0, 83, 0, 33);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Text"] = [[by trxyz.gg]];
G2L["1b"]["Position"] = UDim2.new(0, 0, -0.00413, 0);

-- StarterGui.ScreenGui.MainUI.ImageButton
G2L["1c"] = Instance.new("ImageButton", G2L["2"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["Image"] = [[rbxassetid://17103159935]];
G2L["1c"]["Size"] = UDim2.new(0, 31, 0, 17);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["HoverImage"] = [[rbxassetid://17105912765]];
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["PressedImage"] = [[rbxassetid://17105951310]];
G2L["1c"]["Position"] = UDim2.new(0.89532, 0, 0.02893, 0);

G2L["1c"].MouseButton1Click:Connect(function()
    G2L["1"]:Destroy()
end)
return G2L["1"], require;
