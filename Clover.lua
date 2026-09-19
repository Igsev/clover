-- language: Luau, file: eclipse.lua, target: Roblox (external executor)
-- v4: AvatarSpoofer fixed (name+id, no keybind), universal watermark fallback, InfiniteAmmo,
-- AutoKill (rapid+wallbang+infinite range), Panic (disable all visuals), Spiderman fixed,
-- Targeting + Panic in config table with hold/toggle mode and keybinds.

shared.eclipse = {
    ['Binds'] = {
        ['Select'] = "C",
        ['CameraAimbot'] = "C",
        ['Triggerbot'] = "V",
        ['Speed'] = "Q",
        ['ESP'] = "P",
        ['InfiniteRange'] = "H",
        ['InfiniteAmmo'] = "J",
        ['Wallbang'] = "Z",
        ['RapidFire'] = "T",
        ['Rage'] = "R",
        ['DoubleTap'] = "i",
        ['BulletDump'] = "X",
        ['PanicGround'] = "G",
        ['AutoKill'] = "K",
        ['Panic'] = "L"
    },

    ['Watermark'] = {
        ['Enabled'] = true,
        ['Position'] = "Bottom",
        ['Color'] = Color3.fromRGB(124, 214, 82)
    },

    ['Targeting'] = {
        ['Mode'] = "Select",           -- "Select" or "Automatic"
        ['Keybind'] = "C",
        ['KeyMode'] = "Toggle"          -- "Toggle" or "Hold"
    },

    ['Panic'] = {
        ['Enabled'] = true,
        ['Keybind'] = "L",
        ['KeyMode'] = "Toggle",         -- "Toggle" or "Hold"
        ['DisableESP'] = true,
        ['DisableFOV'] = true,
        ['DisableWatermark'] = true,
        ['DisableAimAssist'] = true,
        ['DisableCamlock'] = true
    },

    ['Checks'] = {
        ['Visible'] = false,
        ['Knock'] = true,
        ['KO'] = true,
        ['Crew'] = true,
        ['SelfKnock'] = true,
        ['Forcefield'] = true
    },

    ['Select Only'] = {
        ['ForceHit'] = true,
        ['ForceTrigger'] = false
    },

    ['Combat'] = {
        ['Silent'] = {
            ['Enabled'] = true,
            ['Hitpart'] = "Closest Point",
            ['Prediction'] = { ['X'] = 0, ['Y'] = 0, ['Z'] = 0 },
            ['ClosestPoint'] = { ['Type'] = "Advanced", ['Scale'] = 0.1, ['Density'] = 5 },
            ['FOV'] = { ['Type'] = "3D", ['Show'] = false, ['Radius'] = 30000, ['X'] = 7.2, ['Y'] = 7.4, ['Z'] = 7.2 },
            ['Weapon FOV Configuration'] = {
                ['Enabled'] = false,
                ['Revolver'] = { ['X'] = 2.5, ['Y'] = 4.8, ['Z'] = 2.8 },
                ['Double-Barrel SG'] = { ['X'] = 3.2, ['Y'] = 5.0, ['Z'] = 2.6 },
                ['TacticalShotgun'] = { ['X'] = 3.0, ['Y'] = 4.5, ['Z'] = 2.4 },
                ['Other'] = { ['X'] = 4.0, ['Y'] = 5.0, ['Z'] = 3.5 }
            }
        },
        ['Camlock'] = {
            ['Enabled'] = true,
            ['Mode'] = "Toggle",
            ['Hitpart'] = "Closest Part",
            ['Perspective'] = { ['FirstPerson'] = true, ['ThirdPerson'] = true },
            ['Prediction'] = { ['X'] = 0, ['Y'] = 0, ['Z'] = 0 },
            ['Smoothing'] = { ['X'] = 0.15, ['Y'] = 0.15 },
            ['FOV'] = { ['Type'] = "2D", ['Show'] = false, ['Radius'] = 200 }
        },
        ['Triggerbot'] = {
            ['Enabled'] = false,
            ['Distance'] = 300,
            ['Mode'] = "Hold",
            ['Type'] = "FOV",
            ['FrameDelay'] = { ['Enabled'] = false, ['RequiredFrames'] = 1 },
            ['Delay'] = { ['Enabled'] = false, ['Amount'] = 0 },
            ['Prediction'] = { ['X'] = 0, ['Y'] = 0, ['Z'] = 0 },
            ['WeaponDistances'] = { ['Enabled'] = true, ['Revolver'] = 250, ['TacticalShotgun'] = 150, ['DoubleSG'] = 100, ['Silencer'] = 300 },
            ['FOV'] = { ['Type'] = "3D", ['Show'] = false, ['Radius'] = 14, ['X'] = 2.5, ['Y'] = 3.8, ['Z'] = 2.5 },
            ['Weapon FOV Configuration'] = {
                ['Enabled'] = true,
                ['Revolver'] = { ['X'] = 5.0, ['Y'] = 5.0, ['Z'] = 5.0 },
                ['Double-Barrel SG'] = { ['X'] = 5.0, ['Y'] = 5.0, ['Z'] = 5.0 },
                ['TacticalShotgun'] = { ['X'] = 5.0, ['Y'] = 5.0, ['Z'] = 5.0 },
                ['Other'] = { ['X'] = 4.0, ['Y'] = 5.0, ['Z'] = 3.5 }
            }
        }
    },

    ['Combat Enhancements'] = {
        ['Hitbox Expander'] = {
            ['Enabled'] = false,
            ['ShowHitbox'] = false,
            ['Weapon Configuration'] = {
                ['Revolver'] = { ['X'] = 5, ['Y'] = 5, ['Z'] = 5 },
                ['Double-Barrel SG'] = { ['X'] = 5, ['Y'] = 5, ['Z'] = 5 },
                ['TacticalShotgun'] = { ['X'] = 5, ['Y'] = 5, ['Z'] = 5 },
                ['Other'] = { ['X'] = 5, ['Y'] = 5, ['Z'] = 5 }
            }
        },
        ['Spread'] = {
            ['Enabled'] = false,
            ['Mode'] = "Fixed",
            ['Weapons'] = {
                ['DoubleSG'] = { ['Fixed'] = 0.0, ['Min'] = 0.0, ['Max'] = 0.0 },
                ['TacticalShotgun'] = { ['Fixed'] = 0.0, ['Min'] = 0.0, ['Max'] = 0.0 }
            }
        }
    },

    ['Movement'] = {
        ['Speed'] = { ['Enabled'] = true, ['Normal'] = 100, ['LowHealth'] = { ['Threshold'] = 17, ['Multiplier'] = 17 } },
        ['Spiderman'] = {
            ['Enabled'] = false,
            ['Keybind'] = "B",
            ['KeyMode'] = "Toggle",
            ['JumpPower'] = 120,
            ['KnifeJumpPower'] = 130,
            ['WallJump'] = true,
            ['WallClimb'] = false
        }
    },

    ['Visuals'] = {
        ['ESP'] = {
            ['Enabled'] = true,
            ['Name'] = true,
            ['Distance'] = false,
            ['FontSize'] = 13,
            ['Color'] = Color3.fromRGB(124, 214, 82),
            ['TargetColor'] = Color3.fromRGB(255, 60, 60)
        },
        ['HealthBar'] = {
            ['Enabled'] = true,
            ['ShowArmor'] = true,
            ['HealthColor'] = Color3.fromRGB(124, 214, 82),
            ['ArmorColor'] = Color3.fromRGB(180, 255, 150)
        }
    },

    ['Misc'] = {
        ['SkinChanger'] = {
            ['Enabled'] = true,
            ['DaHood'] = {
                ['Knife'] = "Golden Age Tanto",
                ['DoubleSG'] = "Galaxy",
                ['TacticalShotgun'] = "Galaxy",
                ['Revolver'] = "Golden Age",
                ['Silencer'] = "Galaxy"
            }
        },
        ['Infinite Range'] = {
    ['Enabled'] = true,
    ['Max Range'] = 7000,
    ['Atomic Ext'] = 1000,
    ['Atomic Ping Lo'] = 0.030,
    ['Atomic Ping Hi'] = 0.150,
},
        ['Infinite Ammo'] = { ['Enabled'] = true },
        ['Wallbang'] = { ['Enabled'] = true },
        ['RapidFire'] = { ['Enabled'] = true, ['Delay'] = 0.02, ['Burst'] = 3 },
        ['Rage'] = { ['Enabled'] = false, ['Prediction'] = 0.13, ['AlwaysHit'] = true },
        ['ForceRegisterShots'] = { ['Enabled'] = true, ['AlwaysHit'] = true },
        ['DamageOverrider'] = {
            ['Enabled'] = true,
            ['Mode'] = "Max",
            ['Weapons'] = {
                ['[Double-Barrel SG]'] = "Max",
                ['[Revolver]'] = "Max",
                ['[TacticalShotgun]'] = "Max"
            }
        },
        ['DoubleTap'] = {
            ['Enabled'] = true,
            ['Mode'] = "Always",
            ['Weapons'] = {
                ['[Double-Barrel SG]'] = true,
                ['[Revolver]'] = true,
                ['[TacticalShotgun]'] = true
            }
        },
        ['RangeEnhancer'] = { ['Enabled'] = true, ['Value'] = 12, ['UseHooks'] = true },
        ['AutoKill'] = {
            ['Enabled'] = false,
            ['Delay'] = 0.0,
            ['Wallbang'] = true,
            ['InfiniteRange'] = true,
            ['DamageOverride'] = true,
            ['ForceHit'] = true
        },
        ['AntiFall'] = true,
        ['Headless'] = false,
        ['AvatarSpoofer'] = {
            ['Enabled'] = false,
            ['Target'] = '',                -- username OR numeric UserId as string
            ['ApplyOnLoad'] = true
        }
    },
}

local eclipse = {}
local players = game:GetService('Players')
local runservice = game:GetService('RunService')
local uis = game:GetService('UserInputService')
local rs = game:GetService('ReplicatedStorage')
local lp = players.LocalPlayer
local cam = workspace.CurrentCamera
local CoreGui = game:GetService('CoreGui')
local GuiService = game:GetService('GuiService')
-- ============================================================
-- ATOMIC LOAD
-- ============================================================
local ATOMIC_SRC = [[
    -- paste the deobfuscated HTTP-spy module here (return Atomic),
    -- or: return loadstring(game:HttpGet("https://your.host/httpspy.lua"))()
]]

local Atomic = (function()
    local f = loadstring(ATOMIC_SRC)
    if not f then return {} end
    local ok, res = pcall(f)
    if ok and type(res) == 'table' then return res end
    return {}
end)()
local CLOVER_GREEN = Color3.fromRGB(124, 214, 82)
local CLOVER_BRIGHT = Color3.fromRGB(180, 255, 150)
local TARGET_RED = Color3.fromRGB(255, 60, 60)
local CLOVER_DARK = Color3.fromRGB(74, 138, 46)
local CLOVER_GLOW = Color3.fromRGB(200, 255, 180)

local math_floor = math.floor
local math_clamp = math.clamp
local math_min = math.min
local math_max = math.max
local math_abs = math.abs
local table_sort = table.sort
local tick_func = tick
local type_func = type
local tostring_func = tostring
local tonumber_func = tonumber

-- ============================================================
-- Panic — master kill switch for all visuals
-- ============================================================
local Panic = {}
Panic.Active = false
Panic.KeyHeld = false

function Panic:Apply()
    local cfg = shared.eclipse.Panic
    if not cfg or not cfg.Enabled then return end
    if cfg.DisableWatermark then
        if shared.eclipse.Watermark then shared.eclipse.Watermark._SavedEnabled = shared.eclipse.Watermark.Enabled end
        shared.eclipse.Watermark.Enabled = false
    end
    if cfg.DisableESP then
        if shared.eclipse.Visuals.ESP then shared.eclipse.Visuals.ESP._SavedEnabled = shared.eclipse.Visuals.ESP.Enabled end
        shared.eclipse.Visuals.ESP.Enabled = false
        if eclipse and eclipse.cleanupAllESP then pcall(function() eclipse:cleanupAllESP() end) end
    end
    if cfg.DisableCamlock then
        state.camlockactive = false
        state.camlockhold = false
        state.camtarget = nil
        state.campart = nil
    end
    self.Active = true
end

function Panic:Release()
    if not self.Active then return end
    local cfg = shared.eclipse.Panic
    if cfg.DisableWatermark and shared.eclipse.Watermark and shared.eclipse.Watermark._SavedEnabled ~= nil then
        shared.eclipse.Watermark.Enabled = shared.eclipse.Watermark._SavedEnabled
        shared.eclipse.Watermark._SavedEnabled = nil
    end
    if cfg.DisableESP and shared.eclipse.Visuals.ESP and shared.eclipse.Visuals.ESP._SavedEnabled ~= nil then
        shared.eclipse.Visuals.ESP.Enabled = shared.eclipse.Visuals.ESP._SavedEnabled
        shared.eclipse.Visuals.ESP._SavedEnabled = nil
    end
    self.Active = false
end

function Panic:Toggle()
    if self.Active then self:Release() else self:Apply() end
end

_G.eclipse_panic = Panic

-- ============================================================
-- AvatarSpoofer — client-side mirror of a target player's appearance
-- ============================================================
local AvatarSpoofer = {}
AvatarSpoofer.Enabled = false
AvatarSpoofer.TargetUser = ""
AvatarSpoofer.TargetPlayer = nil
AvatarSpoofer.OriginalState = nil
AvatarSpoofer.Applied = false
AvatarSpoofer.Connections = {}

local function AS_FindPlayer(needle)
    if not needle or needle == "" then return nil end
    local needle_str = tostring(needle):lower()
    local needle_num = tonumber(needle)
    for _, plr in ipairs(players:GetPlayers()) do
        if plr == lp then continue end
        local name = plr.Name:lower()
        local display = (plr.DisplayName or ""):lower()
        local uid = tostring(plr.UserId)
        if name == needle_str or display == needle_str then return plr end
        if needle_num and tonumber(uid) == needle_num then return plr end
        if name:find(needle_str, 1, true) or display:find(needle_str, 1, true) then return plr end
    end
    return nil
end

local function AS_SnapshotCharacter(char)
    if not char then return nil end
    local snap = { body_parts = {}, accessories = {} }
    for _, part in ipairs(char:GetDescendants()) do
        if part:IsA('BasePart') and part.Name ~= 'HumanoidRootPart' then
            local mesh = part:FindFirstChildOfClass('SpecialMesh')
            local decal = part:FindFirstChildOfClass('Decal')
            snap.body_parts[part.Name] = {
                Size = part.Size,
                Color = part.Color,
                Material = part.Material,
                Transparency = part.Transparency,
                Reflectance = part.Reflectance,
                MeshId = mesh and mesh.MeshId or nil,
                TextureId = mesh and mesh.TextureId or nil,
                MeshScale = mesh and mesh.Scale or nil,
                Decal = decal and decal.Texture or nil,
            }
        end
        if part:IsA('Accessory') then
            table.insert(snap.accessories, part:Clone())
        end
    end
    local shirt = char:FindFirstChildOfClass('Shirt')
    local pants = char:FindFirstChildOfClass('Pants')
    local graphic = char:FindFirstChildOfClass('ShirtGraphic')
    snap.shirt = shirt and shirt.ShirtTemplate or nil
    snap.pants = pants and pants.PantsTemplate or nil
    snap.graphic = graphic and graphic.Graphic or nil
    local hum = char:FindFirstChildOfClass('Humanoid')
    if hum then
        snap.display_name = hum.DisplayName
        snap.rig = hum.RigType
    end
    return snap
end

local function AS_CaptureAppearance(char)
    return AS_SnapshotCharacter(char)
end

local function AS_ApplyAccessories(my_char, target_accessories)
    for _, child in ipairs(my_char:GetChildren()) do
        if child:IsA('Accessory') then child:Destroy() end
    end
    for _, acc in ipairs(target_accessories) do
        local clone = acc:Clone()
        local handle = clone:FindFirstChildWhichIsA('BasePart', true)
        if handle then
            local acc_attachment_name = nil
            for _, d in ipairs(handle:GetDescendants()) do
                if d:IsA('Attachment') then acc_attachment_name = d.Name break end
            end
            if acc_attachment_name then
                for _, my_part in ipairs(my_char:GetChildren()) do
                    if my_part:IsA('BasePart') then
                        local my_att = my_part:FindFirstChild(acc_attachment_name)
                        if my_att and my_att:IsA('Attachment') then
                            handle.Anchored = false
                            handle.CFrame = my_att.WorldCFrame
                            local weld = Instance.new('WeldConstraint')
                            weld.Part0 = my_part
                            weld.Part1 = handle
                            weld.Parent = handle
                            break
                        end
                    end
                end
            end
        end
        clone.Parent = my_char
    end
end

local function AS_MirrorAppearance(target_app, my_char)
    if not target_app or not my_char then return end
    local my_hum = my_char:FindFirstChildOfClass('Humanoid')
    if not my_hum then return end

    if my_hum.RigType == target_app.rig then
        for part_name, data in pairs(target_app.body_parts) do
            local my_part = my_char:FindFirstChild(part_name)
            if my_part and my_part:IsA('BasePart') then
                my_part.Size = data.Size
                my_part.Color = data.Color
                my_part.Material = data.Material
                local my_mesh = my_part:FindFirstChildOfClass('SpecialMesh')
                if data.MeshId or data.TextureId then
                    if not my_mesh then
                        my_mesh = Instance.new('SpecialMesh')
                        my_mesh.Parent = my_part
                    end
                    if data.MeshId then my_mesh.MeshId = data.MeshId end
                    if data.TextureId then my_mesh.TextureId = data.TextureId end
                    if data.MeshScale then my_mesh.Scale = data.MeshScale end
                elseif my_mesh then
                    my_mesh:Destroy()
                end
                local my_decal = my_part:FindFirstChildOfClass('Decal')
                if data.Decal then
                    if not my_decal then
                        my_decal = Instance.new('Decal')
                        my_decal.Parent = my_part
                    end
                    my_decal.Texture = data.Decal
                elseif my_decal then
                    my_decal:Destroy()
                end
            end
        end
    end

    AS_ApplyAccessories(my_char, target_app.accessories)

    if target_app.display_name then
        my_hum.DisplayName = target_app.display_name
    end

    local my_shirt = my_char:FindFirstChildOfClass('Shirt')
    if target_app.shirt then
        if not my_shirt then
            my_shirt = Instance.new('Shirt')
            my_shirt.Parent = my_char
        end
        my_shirt.ShirtTemplate = target_app.shirt
    elseif my_shirt then
        my_shirt:Destroy()
    end
    local my_pants = my_char:FindFirstChildOfClass('Pants')
    if target_app.pants then
        if not my_pants then
            my_pants = Instance.new('Pants')
            my_pants.Parent = my_char
        end
        my_pants.PantsTemplate = target_app.pants
    elseif my_pants then
        my_pants:Destroy()
    end
    local my_graphic = my_char:FindFirstChildOfClass('ShirtGraphic')
    if target_app.graphic then
        if not my_graphic then
            my_graphic = Instance.new('ShirtGraphic')
            my_graphic.Parent = my_char
        end
        my_graphic.Graphic = target_app.graphic
    elseif my_graphic then
        my_graphic:Destroy()
    end
end

local function AS_TrySpoofEscPreview(target_player)
    if not target_player or not target_player.Character then return false end
    local function find_world_model(node, depth)
        if depth > 8 then return nil end
        if node:IsA('WorldModel') then return node end
        local ok, children = pcall(function() return node:GetChildren() end)
        if not ok or not children then return nil end
        for _, child in ipairs(children) do
            local found = find_world_model(child, depth + 1)
            if found then return found end
        end
        return nil
    end
    -- Try gethui() if available (executor hidden UI)
    local roots = {}
    if gethui then
        local ok, hui = pcall(gethui)
        if ok and hui then table.insert(roots, hui) end
    end
    table.insert(roots, CoreGui)
    table.insert(roots, game:GetService('Players'))
    for _, root in ipairs(roots) do
        local wm = find_world_model(root, 0)
        if wm then
            local clone = target_player.Character:Clone()
            for _, child in ipairs(wm:GetChildren()) do child:Destroy() end
            clone.Parent = wm
            return true
        end
    end
    return false
end

function AvatarSpoofer:SetTarget(user)
    self.TargetUser = tostring(user or "")
    self.TargetPlayer = AS_FindPlayer(self.TargetUser)
    return self.TargetPlayer ~= nil
end

function AvatarSpoofer:Apply()
    if not self.TargetPlayer or not self.TargetPlayer.Parent then
        if not self:SetTarget(self.TargetUser) then return false end
    end
    local my_char = lp.Character
    local target_char = self.TargetPlayer.Character
    if not my_char or not target_char then return false end
    if not self.OriginalState then
        self.OriginalState = AS_SnapshotCharacter(my_char)
    end
    local target_app = AS_CaptureAppearance(target_char)
    if not target_app then return false end
    AS_MirrorAppearance(target_app, my_char)
    AS_TrySpoofEscPreview(self.TargetPlayer)
    self.Applied = true
    self.Enabled = true
    return true
end

function AvatarSpoofer:Clear()
    if not self.OriginalState then self.Applied = false self.Enabled = false return end
    local my_char = lp.Character
    if my_char then
        for _, acc in ipairs(my_char:GetChildren()) do
            if acc:IsA('Accessory') then acc:Destroy() end
        end
        for _, acc in ipairs(self.OriginalState.accessories) do
            local clone = acc:Clone()
            clone.Parent = my_char
        end
        for part_name, data in pairs(self.OriginalState.body_parts) do
            local my_part = my_char:FindFirstChild(part_name)
            if my_part and my_part:IsA('BasePart') then
                my_part.Size = data.Size
                my_part.Color = data.Color
                my_part.Material = data.Material
                my_part.Transparency = data.Transparency
                my_part.Reflectance = data.Reflectance
                local my_mesh = my_part:FindFirstChildOfClass('SpecialMesh')
                if data.MeshId or data.TextureId then
                    if not my_mesh then
                        my_mesh = Instance.new('SpecialMesh')
                        my_mesh.Parent = my_part
                    end
                    my_mesh.MeshId = data.MeshId or ''
                    my_mesh.TextureId = data.TextureId or ''
                    if data.MeshScale then my_mesh.Scale = data.MeshScale end
                elseif my_mesh then
                    my_mesh:Destroy()
                end
            end
        end
        local hum = my_char:FindFirstChildOfClass('Humanoid')
        if hum and self.OriginalState.display_name then hum.DisplayName = self.OriginalState.display_name end
        local my_shirt = my_char:FindFirstChildOfClass('Shirt')
        if self.OriginalState.shirt then
            if not my_shirt then my_shirt = Instance.new('Shirt') my_shirt.Parent = my_char end
            my_shirt.ShirtTemplate = self.OriginalState.shirt
        elseif my_shirt then my_shirt:Destroy() end
        local my_pants = my_char:FindFirstChildOfClass('Pants')
        if self.OriginalState.pants then
            if not my_pants then my_pants = Instance.new('Pants') my_pants.Parent = my_char end
            my_pants.PantsTemplate = self.OriginalState.pants
        elseif my_pants then my_pants:Destroy() end
        local my_graphic = my_char:FindFirstChildOfClass('ShirtGraphic')
        if self.OriginalState.graphic then
            if not my_graphic then my_graphic = Instance.new('ShirtGraphic') my_graphic.Parent = my_char end
            my_graphic.Graphic = self.OriginalState.graphic
        elseif my_graphic then my_graphic:Destroy() end
    end
    self.Applied = false
    self.Enabled = false
end

function AvatarSpoofer:Toggle()
    if self.Applied then self:Clear() return false end
    return self:Apply()
end

_G.eclipse_avatarspoofer = AvatarSpoofer

-- Wire avatar spoofer config on load
do
    local AspCfg = shared.eclipse.Misc['AvatarSpoofer']
    if AspCfg and AspCfg.Enabled and AspCfg.ApplyOnLoad and AspCfg.Target and AspCfg.Target ~= '' then
        task.spawn(function()
            task.wait(1.5)
            if AvatarSpoofer:SetTarget(AspCfg.Target) then
                AvatarSpoofer:Apply()
            end
        end)
    end
end

-- Reapply on respawn
lp.CharacterAdded:Connect(function()
    task.wait(0.5)
    AvatarSpoofer.OriginalState = nil
    if AvatarSpoofer.Applied then
        AvatarSpoofer:Apply()
    end
end)

-- ============================================================
-- Wallbang — universal MAP → Ignored reparent
-- ============================================================
local Wallbang = {}
Wallbang.Enabled = false
Wallbang.OriginalParent = nil
Wallbang.Connection = nil
Wallbang.FoundMap = nil

local function WB_FindMap()
    local direct = workspace:FindFirstChild('MAP')
    if direct then return direct end
    for _, child in ipairs(workspace:GetChildren()) do
        if child:IsA('Model') or child:IsA('Folder') then
            local lower = child.Name:lower()
            if lower == 'map' or lower == 'world' or lower == 'environment' or lower == 'terrain' then
                return child
            end
        end
    end
    -- try Camera target / fallback
    for _, child in ipairs(workspace:GetChildren()) do
        if child:IsA('Model') and #child:GetChildren() > 20 then
            return child
        end
    end
    return nil
end

local function WB_EnsureIgnored()
    local Ignored = workspace:FindFirstChild('Ignored')
    if not Ignored then
        Ignored = Instance.new('Folder')
        Ignored.Name = 'Ignored'
        Ignored.Parent = workspace
    end
    return Ignored
end

function Wallbang:Apply()
    if self.Enabled then return end
    local Map = WB_FindMap()
    if not Map then warn('[wallbang] no map model found') return end
    self.FoundMap = Map
    self.OriginalParent = Map.Parent
    Map.Parent = WB_EnsureIgnored()
    self.Enabled = true
end

function Wallbang:Restore()
    if not self.Enabled then return end
    if self.FoundMap and self.FoundMap.Parent then
        self.FoundMap.Parent = self.OriginalParent or workspace
    end
    self.FoundMap = nil
    self.Enabled = false
end

function Wallbang:Toggle()
    if self.Enabled then self:Restore() print('[wallbang] off')
    else self:Apply() print('[wallbang] on') end
end

Wallbang.Connection = runservice.Heartbeat:Connect(function()
    if not Wallbang.Enabled then return end
    if self and self.FoundMap and self.FoundMap.Parent == workspace then
        self.FoundMap.Parent = WB_EnsureIgnored()
    end
end)

do
    local WbCfg = shared.eclipse.Misc['Wallbang']
    if WbCfg and WbCfg.Enabled then
        local Key = Enum.KeyCode[(shared.eclipse.Binds.Wallbang or 'Z'):upper()] or Enum.KeyCode.Z
        if Key then
            uis.InputBegan:Connect(function(Input, GP)
                if GP then return end
                if Input.KeyCode == Key then Wallbang:Toggle() end
            end)
        end
    end
end
_G.eclipse_wallbang = Wallbang

-- ============================================================
-- Rapid Fire
-- ============================================================
local RapidFire = {}
RapidFire.Enabled = false
RapidFire.Bursting = false
RapidFire.LastFire = 0
RapidFire.HookedTools = setmetatable({}, {__mode = 'k'})

local RF_COOLDOWN_FALLBACK = 0.3
local RF_MIN_DELAY = 0.005

local function RF_GetCooldown(Tool)
    if not Tool then return RF_COOLDOWN_FALLBACK end
    local Cd = Tool:FindFirstChild('ShootingCooldown')
    if Cd and Cd:IsA('NumberValue') then
        local v = tonumber(Cd.Value) or RF_COOLDOWN_FALLBACK
        return math_clamp(v, RF_MIN_DELAY, 1.0)
    end
    return RF_COOLDOWN_FALLBACK
end

local function RF_FireOnce(Tool)
    if not Tool or not Tool:IsA('Tool') then return false end
    local Ammo = Tool:FindFirstChild('Ammo')
    if Ammo and Ammo:IsA('NumberValue') and Ammo.Value <= 0 then return false end
    local Remote = Tool:FindFirstChild('RemoteEvent')
    local fired = false
    if Remote and Remote:IsA('RemoteEvent') then
        pcall(function() Remote:FireServer('Shoot') fired = true end)
    end
    if not fired then
        pcall(function() Tool:Activate() fired = true end)
    end
    return fired
end

local function RF_Burst(Tool)
    if RapidFire.Bursting then return end
    if not Tool or Tool.Name == '[Knife]' or Tool.Name == 'Knife' then return end
    local cfg = shared.eclipse.Misc['RapidFire']
    if not cfg or not cfg.Enabled then return end
    local Count = tonumber(cfg.Burst) or 3
    local BaseDelay = tonumber(cfg.Delay) or 0.02
    local Cooldown = RF_GetCooldown(Tool)
    local Delay = math.max(BaseDelay, Cooldown * 0.5)
    RapidFire.Bursting = true
    task.spawn(function()
        for _ = 1, Count do
            if RF_FireOnce(Tool) then
                RapidFire.LastFire = tick_func()
            end
            task.wait(Delay)
        end
        RapidFire.Bursting = false
    end)
end

do
    local RfCfg = shared.eclipse.Misc['RapidFire']
    if RfCfg and RfCfg.Enabled then
        local Key = Enum.KeyCode[(shared.eclipse.Binds.RapidFire or 'T'):upper()]
        if Key then
            uis.InputBegan:Connect(function(Input, GP)
                if GP then return end
                if Input.KeyCode ~= Key then return end
                local Char = lp.Character
                local Tool = Char and Char:FindFirstChildOfClass('Tool')
                if Tool and Tool.Name ~= '[Knife]' then
                    RapidFire.Enabled = true
                    RF_Burst(Tool)
                end
            end)
            uis.InputEnded:Connect(function(Input)
                if Input.KeyCode == Key then RapidFire.Enabled = false end
            end)
        end
    end

    local function AttachToTool(Tool)
        if not Tool or not Tool:IsA('Tool') then return end
        Tool.Activated:Connect(function()
            if not RapidFire.Enabled then return end
            if RapidFire.Bursting then return end
            RF_Burst(Tool)
        end)
    end

    local function AttachToChar(Char)
        if not Char then return end
        for _, Child in ipairs(Char:GetChildren()) do
            if Child:IsA('Tool') then AttachToTool(Child) end
        end
        Char.ChildAdded:Connect(function(Child)
            if Child:IsA('Tool') then AttachToTool(Child) end
        end)
    end

    if lp.Character then AttachToChar(lp.Character) end
    lp.CharacterAdded:Connect(AttachToChar)
end
_G.eclipse_rapidfire = RapidFire

-- ============================================================
-- Infinite Ammo — force Ammo NumberValue high every tick
-- ============================================================
local InfiniteAmmo = {}
InfiniteAmmo.Enabled = false
InfiniteAmmo.ForceValue = 999

local function IA_ApplyToTool(Tool)
    if not Tool then return end
    local Ammo = Tool:FindFirstChild('Ammo')
    if Ammo and Ammo:IsA('NumberValue') then
        if Ammo.Value < InfiniteAmmo.ForceValue then
            Ammo.Value = InfiniteAmmo.ForceValue
        end
    end
    local Folder = Tool:FindFirstChild('Configuration') or Tool:FindFirstChild('GunConfig') or Tool:FindFirstChild('Values')
    if Folder then
        local a2 = Folder:FindFirstChild('Ammo') or Folder:FindFirstChild('MaxAmmo') or Folder:FindFirstChild('ClipSize')
        if a2 and a2:IsA('NumberValue') then
            if a2.Value < InfiniteAmmo.ForceValue then a2.Value = InfiniteAmmo.ForceValue end
        end
    end
end

task.spawn(function()
    while true do
        task.wait(0.1)
        local Cfg = shared.eclipse.Misc['Infinite Ammo']
        if Cfg and Cfg.Enabled and InfiniteAmmo.Enabled then
            local Char = lp.Character
            if Char then
                for _, child in ipairs(Char:GetChildren()) do
                    if child:IsA('Tool') then IA_ApplyToTool(child) end
                end
            end
            local Bp = lp:FindFirstChildOfClass('Backpack')
            if Bp then
                for _, child in ipairs(Bp:GetChildren()) do
                    if child:IsA('Tool') then IA_ApplyToTool(child) end
                end
            end
        end
    end
end)

do
    local IaCfg = shared.eclipse.Misc['Infinite Ammo']
    if IaCfg and IaCfg.Enabled then
        local Key = Enum.KeyCode[(shared.eclipse.Binds.InfiniteAmmo or 'J'):upper()]
        if Key then
            uis.InputBegan:Connect(function(Input, GP)
                if GP then return end
                if Input.KeyCode ~= Key then return end
                InfiniteAmmo.Enabled = not InfiniteAmmo.Enabled
                print('[inf ammo]', InfiniteAmmo.Enabled and 'on' or 'off')
            end)
        end
    end
end
_G.eclipse_infammo = InfiniteAmmo

-- ============================================================
-- Bullet Dump
-- ============================================================
local BulletDump = {}
BulletDump.Active = false
BulletDump.Firing = false
BulletDump.LastCount = 0

local function BD_GetCooldown(Tool)
    local Cd = Tool and Tool:FindFirstChild('ShootingCooldown')
    if Cd and Cd:IsA('NumberValue') then
        return math.clamp(tonumber(Cd.Value) or 0.15, 0.005, 0.5)
    end
    return 0.15
end

local function BD_FireOnce(Tool)
    if not Tool or not Tool:IsA('Tool') then return false end
    local Ammo = Tool:FindFirstChild('Ammo')
    if Ammo and Ammo:IsA('NumberValue') and Ammo.Value <= 0 then return false end
    local Remote = Tool:FindFirstChild('RemoteEvent')
    if Remote and Remote:IsA('RemoteEvent') then
        return pcall(function() Remote:FireServer('Shoot') end)
    end
    return pcall(function() Tool:Activate() end)
end

function BulletDump:Fire(Tool)
    if self.Firing or not Tool then return end
    if Tool.Name == '[Knife]' or Tool.Name == 'Knife' then return end
    self.Firing = true
    self.Active = true
    local Ammo = Tool:FindFirstChild('Ammo')
    local Count = Ammo and math.max(1, math.floor(tonumber(Ammo.Value) or 1)) or 6
    self.LastCount = Count
    local Delay = BD_GetCooldown(Tool)
    task.spawn(function()
        for _ = 1, Count do
            if not Tool.Parent then break end
            if not BD_FireOnce(Tool) then break end
            task.wait(Delay)
        end
        task.wait(0.05)
        self.Firing = false
        self.Active = false
    end)
end

do
    local Key = Enum.KeyCode[(shared.eclipse.Binds.BulletDump or 'X'):upper()]
    if Key then
        uis.InputBegan:Connect(function(Input, GP)
            if GP then return end
            if Input.KeyCode ~= Key then return end
            local Char = lp.Character
            local Tool = Char and Char:FindFirstChildOfClass('Tool')
            if Tool and Tool.Name ~= '[Knife]' then
                BulletDump:Fire(Tool)
            end
        end)
    end
end
_G.eclipse_bulletdump = BulletDump

-- ============================================================
-- Panic Ground
-- ============================================================
local PanicGround = {}
PanicGround.Enabled = true

local function PG_GetGround(Position, ExcludeInstances)
    local Params = RaycastParams.new()
    Params.FilterType = Enum.RaycastFilterType.Exclude
    Params.FilterDescendantsInstances = ExcludeInstances or {}
    local Result = workspace:Raycast(Position, Vector3.new(0, -2000, 0), Params)
    return Result and Result.Position or nil
end

function PanicGround:Run()
    local Character = lp.Character
    local HRP = Character and Character:FindFirstChild('HumanoidRootPart')
    local Humanoid = Character and Character:FindFirstChildOfClass('Humanoid')
    if not HRP then return end
    local GroundPos = PG_GetGround(HRP.Position, {Character})
    if not GroundPos then return end
    HRP.CFrame = CFrame.new(GroundPos.X, GroundPos.Y + 3, GroundPos.Z) * (HRP.CFrame - HRP.CFrame.Position)
    HRP.AssemblyLinearVelocity = Vector3.zero
    HRP.AssemblyAngularVelocity = Vector3.zero
    if Humanoid then
        Humanoid.Jump = false
        Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
    end
end

do
    local Key = Enum.KeyCode[(shared.eclipse.Binds.PanicGround or 'G'):upper()]
    if Key then
        uis.InputBegan:Connect(function(Input, GP)
            if GP then return end
            if Input.KeyCode == Key and PanicGround.Enabled then
                PanicGround:Run()
            end
        end)
    end
end
_G.eclipse_panicground = PanicGround

-- ============================================================
-- Rage stack
-- ============================================================
local RageStack = {}
RageStack.DoubleTapActive = false
RageStack.RageActive = false

local DamageOverrideMap = { Max = 'Head', Half = 'HumanoidRootPart', Min = 'RightFoot' }

local function RS_GetDoubleTapCount(ToolName)
    local Cfg = shared.eclipse.Misc['DoubleTap']
    if not Cfg or not Cfg.Enabled then return 1 end
    local List = Cfg.Weapons
    if not List or not List[ToolName] then return 1 end
    if Cfg.Mode == 'Always' then return 2 end
    if Cfg.Mode == 'Toggle' and RageStack.DoubleTapActive then return 2 end
    return 1
end

local function RS_GetDamageOverrideMode(ToolName)
    local Cfg = shared.eclipse.Misc['DamageOverrider']
    if not Cfg or not Cfg.Enabled then return nil end
    local perWeapon = Cfg.Weapons and Cfg.Weapons[ToolName]
    if perWeapon then return perWeapon end
    return Cfg.Mode
end

local function RS_ApplyDamageOverride(HitInstance)
    if not HitInstance or not HitInstance.Parent then return HitInstance end
    local Char = HitInstance:FindFirstAncestorOfClass('Model')
    if not Char then return HitInstance end
    local Hum = Char:FindFirstChildOfClass('Humanoid')
    if not Hum then return HitInstance end
    local Tool = lp.Character and lp.Character:FindFirstChildOfClass('Tool')
    local ToolName = Tool and Tool.Name or ''
    local Mode = RS_GetDamageOverrideMode(ToolName)
    if not Mode then return HitInstance end
    local PartName = DamageOverrideMap[Mode]
    if not PartName then return HitInstance end
    local TargetPart = Char:FindFirstChild(PartName) or Char:FindFirstChild('HumanoidRootPart')
    return TargetPart or HitInstance
end

local function RS_GetRangeBonus()
    local Cfg = shared.eclipse.Misc['RangeEnhancer']
    if not Cfg or not Cfg.Enabled then return 0 end
    return tonumber(Cfg.Value) or 12
end

local function RS_ApplyRangeToTool(Tool)
    if not Tool then return end
    local Bonus = RS_GetRangeBonus()
    if Bonus <= 0 then return end
    local R = Tool:FindFirstChild('Range')
    if R and R:IsA('NumberValue') then
        local Base = Tool:GetAttribute('__eclipse_base_range')
        if type(Base) ~= 'number' then
            Base = R.Value
            Tool:SetAttribute('__eclipse_base_range', Base)
        end
        R.Value = Base + Bonus
    end
    local Folder = Tool:FindFirstChild('Configuration') or Tool:FindFirstChild('GunConfig') or Tool:FindFirstChild('Values')
    if Folder then
        for _, name in ipairs({'Range','MaxRange','FireRange','MaxDistance','BulletDistance'}) do
            local R2 = Folder:FindFirstChild(name)
            if R2 and R2:IsA('NumberValue') then
                local Base2 = Folder:GetAttribute('__eclipse_base_' .. name)
                if type(Base2) ~= 'number' then
                    Base2 = R2.Value
                    Folder:SetAttribute('__eclipse_base_' .. name, Base2)
                end
                R2.Value = Base2 + Bonus
            end
        end
    end
end

task.spawn(function()
    while true do
        task.wait(0.5)
        local Cfg = shared.eclipse.Misc['RangeEnhancer']
        if Cfg and Cfg.Enabled then
            local Char = lp.Character
            if Char then
                for _, Child in ipairs(Char:GetChildren()) do
                    if Child:IsA('Tool') then RS_ApplyRangeToTool(Child) end
                end
            end
            local Bp = lp:FindFirstChildOfClass('Backpack')
            if Bp then
                for _, Child in ipairs(Bp:GetChildren()) do
                    if Child:IsA('Tool') then RS_ApplyRangeToTool(Child) end
                end
            end
        end
    end
end)

local RAGE_LAST_SHOT = 0
local RAGE_SHOT_INTERVAL = 0.01

task.spawn(function()
    while true do
        task.wait(RAGE_SHOT_INTERVAL)
        local Cfg = shared.eclipse.Misc['Rage']
        if Cfg and Cfg.Enabled and RageStack.RageActive then
            local Target = state.target
            if Target and Target.Character and eclipse:targetvalid() and not eclipse:targetpaused() then
                local Char = lp.Character
                local Tool = Char and Char:FindFirstChildOfClass('Tool')
                if Tool and Tool.Name ~= '[Knife]' then
                    local Ammo = Tool:FindFirstChild('Ammo')
                    local Cd = Tool:FindFirstChild('ShootingCooldown')
                    local Cooldown = Cd and tonumber(Cd.Value) or 0.3
                    local Now = tick_func()
                    if Ammo and Ammo.Value > 0 and (Now - RAGE_LAST_SHOT) >= math.max(Cooldown, 0.01) then
                        RAGE_LAST_SHOT = Now
                        task.spawn(function()
                            local Count = RS_GetDoubleTapCount(Tool.Name)
                            for _ = 1, Count do
                                pcall(function() Tool:Activate() end)
                            end
                        end)
                    end
                end
            end
        end
    end
end)

-- ============================================================
-- AutoKill — rapid fire + wallbang + infinite range + force hit
-- ============================================================
local AutoKill = {}
AutoKill.Enabled = false
AutoKill.LastShot = 0
AutoKill.ShotInterval = 0.01

local function AK_FireTool(Tool)
    if not Tool or Tool.Name == '[Knife]' then return end
    local Ammo = Tool:FindFirstChild('Ammo')
    if Ammo and Ammo:IsA('NumberValue') and Ammo.Value <= 0 and not InfiniteAmmo.Enabled then return end
    local Remote = Tool:FindFirstChild('RemoteEvent')
    if Remote and Remote:IsA('RemoteEvent') then
        pcall(function() Remote:FireServer('Shoot') end)
    end
    pcall(function() Tool:Activate() end)
end

task.spawn(function()
    while true do
        task.wait(AutoKill.ShotInterval)
        if AutoKill.Enabled then
            local Cfg = shared.eclipse.Misc['AutoKill']
            if Cfg and Cfg.Enabled then
                if Cfg.Wallbang and not Wallbang.Enabled then Wallbang:Apply() end
                if Cfg.InfiniteRange then
                    local Char = lp.Character
                    if Char then
                        local Tool = Char:FindFirstChildOfClass('Tool')
                        if Tool then
                            for _, name in ipairs({'Range','MaxRange','FireRange','MaxDistance','BulletDistance'}) do
                                local R = Tool:FindFirstChild(name)
                                if R and R:IsA('NumberValue') then R.Value = 99999 end
                            end
                        end
                    end
                end
                local Target = state.target
                if Target and Target.Character then
                    local Char = lp.Character
                    local Tool = Char and Char:FindFirstChildOfClass('Tool')
                    if Tool then
                        local Now = tick_func()
                        local interval = tonumber(Cfg.Delay) or 0.01
                        if (Now - AutoKill.LastShot) >= math.max(interval, 0.005) then
                            AutoKill.LastShot = Now
                            task.spawn(function() AK_FireTool(Tool) end)
                        end
                    end
                end
            end
        end
    end
end)

do
    local AkCfg = shared.eclipse.Misc['AutoKill']
    if AkCfg and AkCfg.Enabled then
        local Key = Enum.KeyCode[(shared.eclipse.Binds.AutoKill or 'K'):upper()]
        if Key then
            uis.InputBegan:Connect(function(Input, GP)
                if GP then return end
                if Input.KeyCode ~= Key then return end
                AutoKill.Enabled = not AutoKill.Enabled
                print('[autokill]', AutoKill.Enabled and 'on' or 'off')
            end)
        end
    end
end
_G.eclipse_autokill = AutoKill

-- ============================================================
-- Rage / DoubleTap keybinds
-- ============================================================
do
    uis.InputBegan:Connect(function(Input, GP)
        if GP then return end

        local RageCfg = shared.eclipse.Misc['Rage']
        if RageCfg and RageCfg.Enabled then
            local K = Enum.KeyCode[(shared.eclipse.Binds.Rage or 'R'):upper()]
            if K and Input.KeyCode == K then
                RageStack.RageActive = not RageStack.RageActive
                print('[rage]', RageStack.RageActive and 'on' or 'off')
            end
        end

        local DtCfg = shared.eclipse.Misc['DoubleTap']
        if DtCfg and DtCfg.Enabled then
            local Mode = DtCfg.Mode or 'Always'
            if Mode == 'Toggle' then
                local K = Enum.KeyCode[(shared.eclipse.Binds.DoubleTap or 'i'):upper()]
                if K and Input.KeyCode == K then
                    RageStack.DoubleTapActive = not RageStack.DoubleTapActive
                    print('[double tap]', RageStack.DoubleTapActive and 'on' or 'off')
                end
            end
        end
    end)
end
_G.eclipse_rage = RageStack

-- ============================================================
-- ESP backend
-- ============================================================

local UtilityUI = Instance.new('ScreenGui')
UtilityUI.Name = 'ciderui'
UtilityUI.IgnoreGuiInset = true
UtilityUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UtilityUI.Parent = CoreGui

local function CreateSquare()
    local Obj = { _Size = Vector2.new(0, 0), _Position = Vector2.new(0, 0), _Color = Color3.new(1, 1, 1), _Visible = false, _Filled = false, _Thickness = 1, _Transparency = 1 }
    local Frame = Instance.new('Frame')
    Frame.BorderSizePixel = 0
    Frame.BackgroundTransparency = 1
    Frame.BackgroundColor3 = Obj._Color
    Frame.Visible = Obj._Visible
    Frame.Parent = UtilityUI
    local Stroke = Instance.new('UIStroke')
    Stroke.Thickness = Obj._Thickness
    Stroke.Enabled = true
    Stroke.LineJoinMode = Enum.LineJoinMode.Miter
    Stroke.Parent = Frame
    local Corner = Instance.new('UICorner')
    Corner.CornerRadius = UDim.new(0, 0)
    Corner.Parent = Frame
    local Proxy = {}
    local Meta = {
        __newindex = function(_, Key, Value)
            if Key == 'Size' then Obj._Size = Value Frame.Size = UDim2.fromOffset(Value.X, Value.Y)
            elseif Key == 'Round' then Obj._Round = Value Corner.CornerRadius = Value and UDim.new(1, 0) or UDim.new(0, 0)
            elseif Key == 'Position' then Obj._Position = Value Frame.Position = UDim2.fromOffset(Value.X, Value.Y)
            elseif Key == 'Color' then Obj._Color = Value Frame.BackgroundColor3 = Value Stroke.Color = Value
            elseif Key == 'Visible' then Obj._Visible = Value Frame.Visible = Value
            elseif Key == 'Filled' then Obj._Filled = Value Frame.BackgroundTransparency = Value and math.clamp(1 - Obj._Transparency, 0, 1) or 1 Stroke.Enabled = not Value
            elseif Key == 'Thickness' then Obj._Thickness = Value Stroke.Thickness = math.clamp(Value, 0.6, 0x7FFFFFFF)
            elseif Key == 'Transparency' then Obj._Transparency = Value local Alpha = math.clamp(1 - Value, 0, 1) Frame.BackgroundTransparency = Obj._Filled and Alpha or 1 Stroke.Transparency = Alpha end
        end,
        __index = function(_, Key)
            if Key == 'Remove' or Key == 'Destroy' then return function() Frame:Destroy() end
            elseif Key == 'Size' then return Obj._Size
            elseif Key == 'Round' then return Obj._Round
            elseif Key == 'Position' then return Obj._Position
            elseif Key == 'Color' then return Obj._Color
            elseif Key == 'Visible' then return Obj._Visible
            elseif Key == 'Filled' then return Obj._Filled
            elseif Key == 'Thickness' then return Obj._Thickness
            elseif Key == 'Transparency' then return Obj._Transparency end
            return nil
        end,
    }
    return setmetatable(Proxy, Meta)
end

local function CreateTextLabel()
    local Obj = { _Text = '', _Size = 13, _Position = Vector2.new(0, 0), _Color = Color3.new(1, 1, 1), _Visible = false, _Center = false, _Outline = true, _OutlineColor = Color3.new(0, 0, 0), _Transparency = 1 }
    local Label = Instance.new('TextLabel')
    Label.AnchorPoint = Vector2.new(0.5, 0.5)
    Label.BorderSizePixel = 0
    Label.BackgroundTransparency = 1
    Label.RichText = true
    Label.Font = Enum.Font.SourceSansBold
    Label.TextSize = Obj._Size
    Label.TextColor3 = Obj._Color
    Label.Visible = Obj._Visible
    Label.Text = ''
    Label.Parent = UtilityUI
    local Stroke = Instance.new('UIStroke')
    Stroke.Thickness = 1
    Stroke.Color = Obj._OutlineColor
    Stroke.Enabled = Obj._Outline
    Stroke.Parent = Label
    local function UpdatePosition()
        local Bounds = Label.TextBounds
        local OffsetX = Obj._Center and 0 or (Bounds.X / 2)
        Label.Position = UDim2.fromOffset(Obj._Position.X + OffsetX, Obj._Position.Y + Bounds.Y / 2)
    end
    Label:GetPropertyChangedSignal('TextBounds'):Connect(UpdatePosition)
    local Proxy = {}
    local Meta = {
        __newindex = function(_, Key, Value)
            if Key == 'Text' then Obj._Text = Value Label.Text = Value
            elseif Key == 'Size' then Obj._Size = Value Label.TextSize = Value
            elseif Key == 'Position' then Obj._Position = Value UpdatePosition()
            elseif Key == 'Color' then Obj._Color = Value Label.TextColor3 = Value
            elseif Key == 'Visible' then Obj._Visible = Value Label.Visible = Value
            elseif Key == 'Center' then Obj._Center = Value UpdatePosition()
            elseif Key == 'Outline' then Obj._Outline = Value Stroke.Enabled = Value
            elseif Key == 'OutlineColor' then Obj._OutlineColor = Value Stroke.Color = Value
            elseif Key == 'Transparency' then Obj._Transparency = Value local Alpha = math.clamp(1 - Value, 0, 1) Label.TextTransparency = Alpha Stroke.Transparency = Alpha
            elseif Key == 'Font' then Label.Font = Value
            elseif Key == 'StrokeThickness' then Stroke.Thickness = Value
            elseif Key == 'StrokeTransparency' then Stroke.Transparency = Value end
        end,
        __index = function(_, Key)
            if Key == 'TextBounds' then return Label.TextBounds
            elseif Key == 'Label' then return Label
            elseif Key == 'Stroke' then return Stroke
            elseif Key == 'Remove' or Key == 'Destroy' then return function() Label:Destroy() end
            elseif Key == 'Text' then return Obj._Text
            elseif Key == 'Size' then return Obj._Size
            elseif Key == 'Position' then return Obj._Position
            elseif Key == 'Color' then return Obj._Color
            elseif Key == 'Visible' then return Obj._Visible
            elseif Key == 'Center' then return Obj._Center
            elseif Key == 'Outline' then return Obj._Outline
            elseif Key == 'Transparency' then return Obj._Transparency end
            return nil
        end,
    }
    return setmetatable(Proxy, Meta)
end

local NameESPDrawings = {}
local HealthBarDrawings = {}
local HealthBarValueCache = {}

local function GetHealthBarArmor(Player)
    local Character = Player and Player.Character
    local BodyEffects = Character and Character:FindFirstChild('BodyEffects')
    local ArmorObject = BodyEffects and (BodyEffects:FindFirstChild('Armor') or BodyEffects:FindFirstChild('Armour') or BodyEffects:FindFirstChild('Defense'))
    if ArmorObject and tonumber(ArmorObject.Value) then return tonumber(ArmorObject.Value), true end
    local Leaderstats = Player and Player:FindFirstChild('leaderstats')
    local LeaderArmor = Leaderstats and (Leaderstats:FindFirstChild('Armor') or Leaderstats:FindFirstChild('Armour') or Leaderstats:FindFirstChild('Defense') or Leaderstats:FindFirstChild('Vest'))
    if LeaderArmor and tonumber(LeaderArmor.Value) then return tonumber(LeaderArmor.Value), true end
    return 0, false
end

local function GetStableHealthBarValues(Player, Humanoid)
    local Now = tick()
    local Cache = HealthBarValueCache[Player]
    if not Cache or Cache.Character ~= Player.Character then
        Cache = { Character = Player.Character, Health = tonumber(Humanoid.Health) or 0, MaxHealth = tonumber(Humanoid.MaxHealth) or 100, Armor = 0, ZeroSince = nil, ArmorMissingSince = nil }
        HealthBarValueCache[Player] = Cache
    end
    local RawMaxHealth = tonumber(Humanoid.MaxHealth)
    if RawMaxHealth and RawMaxHealth > 0 and RawMaxHealth == RawMaxHealth then Cache.MaxHealth = RawMaxHealth end
    local MaxHealth = Cache.MaxHealth > 0 and Cache.MaxHealth or 100
    local RawHealth = tonumber(Humanoid.Health)
    local IsDead = Humanoid:GetState() == Enum.HumanoidStateType.Dead or not Humanoid.Parent
    if RawHealth and RawHealth == RawHealth and RawHealth > 0 then Cache.Health = math.clamp(RawHealth, 0, MaxHealth) Cache.ZeroSince = nil
    elseif IsDead then Cache.Health = 0 Cache.ZeroSince = Now
    else Cache.ZeroSince = nil end
    local RawArmor, HasArmorValue = GetHealthBarArmor(Player)
    if HasArmorValue then Cache.Armor = math.max(tonumber(RawArmor) or 0, 0) Cache.ArmorMissingSince = nil
    else Cache.ArmorMissingSince = Cache.ArmorMissingSince or Now if Now - Cache.ArmorMissingSince >= 0.3 then Cache.Armor = 0 end end
    return Cache.Health, MaxHealth, Cache.Armor, IsDead
end

local function RemoveHealthBarSet(Set)
    if not Set then return end
    for _, Sq in next, Set do pcall(function() Sq:Remove() end) end
end

local function HideHealthBarSet(Set)
    if not Set then return end
    for _, Sq in next, Set do Sq.Visible = false end
end

local state = {
    triggeractive = false, triggerhold = false, target = nil, ctrlheld = false,
    camlockactive = false, camlockhold = false, camtarget = nil, campart = nil,
    rightclick = false, walljumped = false, walljumpconn = nil, speedactive = false,
    currenttarget = nil, selectpressed = false, campressed = false, triggerpressed = false,
    speedpressed = false, esppressed = false, spidermanactive = false, targetingKeyHeld = false,
    triggerFrameCount = 0, lastTriggerTarget = nil
}

local cache = {
    esp = {}, player = {}, defaulthrp = {},
    closestpoint = nil, closesttime = 0,
    target = { player = nil, root = nil, hitbox = nil, box = nil, trigger = nil, triggerbox = nil },
    fov = { silent2d = nil, trigger2d = nil, cam2d = nil }
}

local lastFrameNumber = 0
local closestPointLongCache = {}
local CACHE_VALID_TIME = 0.08
local closestPointFrameCache = { char = nil, result = nil, frame = 0 }

local weapons = {
    shotgun = { ['Double-Barrel SG'] = true, ['TacticalShotgun'] = true, ['Shotgun'] = true, ['DrumShotgun'] = true },
    pistol = { ['Revolver'] = true, ['Silencer'] = true, ['Glock'] = true },
    auto = { ['AK-47'] = true, ['AR'] = true, ['Silencer AR'] = true, ['Drum Gun'] = true },
    rifle = { ['AUG'] = true, ['P90'] = true, ['Rifle'] = true }
}

local parts = {
    r15 = { 'Head', 'UpperTorso', 'LowerTorso', 'LeftUpperArm', 'LeftLowerArm', 'LeftHand', 'RightUpperArm', 'RightLowerArm', 'RightHand', 'LeftUpperLeg', 'LeftLowerLeg', 'LeftFoot', 'RightUpperLeg', 'RightLowerLeg', 'RightFoot' },
    priority = { 'Head', 'UpperTorso', 'LowerTorso', 'LeftUpperArm', 'RightUpperArm', 'LeftLowerArm', 'RightLowerArm', 'LeftUpperLeg', 'RightUpperLeg', 'LeftLowerLeg', 'RightLowerLeg', 'LeftFoot', 'RightFoot' }
}

local SilentTarget = nil
local IsSilentAiming = false
local OriginalGetAim = nil
local HookInstalled = false
local silentEnabled = true

local weaponCache = { hasGun = false, lastCheck = 0, checkInterval = 0.05 }
local targetCache = { player = nil, lastCheck = 0, checkInterval = 0.01 }
local visibilityParams = RaycastParams.new()
visibilityParams.FilterType = Enum.RaycastFilterType.Exclude

-- ============================================================
-- Infinite Range — Atomic[6]
-- ============================================================
local infRangeActive = false

local function RangeCfgRead()
    local c = shared.eclipse.Misc['Infinite Range'] or {}
    return {
        RANGE_MARGIN  = 5,
        RANGE_PING_LO = tonumber(c['Atomic Ping Lo']) or 0.030,
        RANGE_PING_HI = tonumber(c['Atomic Ping Hi']) or 0.150,
        RANGE_EXT     = tonumber(c['Atomic Ext']) or 45,
    }
end

local RangeConst = RangeCfgRead()

local RangeEnv = {
    [1] = { is = function(s) return s == 'dh' end },
    [2] = {},
    [3] = RangeConst,
    [4] = { pingMs = function()
        local ok, v = pcall(function()
            return game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue()
        end)
        return ok and v or 50
    end },
}

local AtomicRangeExtend = (function()
    if type(Atomic) ~= 'table' or type(Atomic[6]) ~= 'function' then return nil end
    local ok, fn = pcall(Atomic[6], RangeEnv)
    if ok and type(fn) == 'function' then return fn end
    return nil
end)()

do
    uis.InputBegan:Connect(function(input, gp)
        if gp then return end
        local cfg = shared.eclipse.Misc['Infinite Range']
        if not cfg or not cfg.Enabled then return end
        local key = Enum.KeyCode[(shared.eclipse.Binds.InfiniteRange or 'H'):upper()]
        if key and input.KeyCode == key then
            infRangeActive = not infRangeActive
            print("[eclipse] Infinite Range:", infRangeActive and "ON" or "OFF")
        end
    end)

    runservice.RenderStepped:Connect(function()
        local cfg = shared.eclipse.Misc['Infinite Range']
        if not cfg or not cfg.Enabled or not infRangeActive then return end
        local char = lp.Character
        if not char then return end
        local tool = char:FindFirstChildOfClass("Tool")
        if not tool then return end
RangeConst = RangeCfgRead()
        if AtomicRangeExtend then
            local origin = cam.CFrame.Position
            local targetPos = nil
            local t = state and state.target
            if t and t.Character then
                local root = t.Character:FindFirstChild('HumanoidRootPart')
                local ut = t.Character:FindFirstChild('UpperTorso')
                targetPos = (ut and ut.Position) or (root and root.Position)
            end
            if targetPos then
                local extended = AtomicRangeExtend(origin, targetPos, tool)
                if typeof(extended) == 'Vector3' and extended ~= origin then
                    local camPos = cam.CFrame.Position
                    local dir = extended - camPos
                    if dir.Magnitude > 0.001 then
                        cam.CFrame = CFrame.new(camPos, camPos + dir.Unit) * (cam.CFrame - cam.CFrame.Position)
                    end
                end
            end
        else
            local rangeProps = {"Range", "MaxRange", "FireRange", "Distance", "MaxDistance", "BulletDistance"}
            for _, propName in ipairs(rangeProps) do
                local rv = tool:FindFirstChild(propName)
                if rv and rv:IsA("NumberValue") then rv.Value = cfg['Max Range'] or 99999 end
            end
            local cfgFolder = tool:FindFirstChild("Configuration") or tool:FindFirstChild("GunConfig") or tool:FindFirstChild("Values")
            if cfgFolder then
                for _, propName in ipairs(rangeProps) do
                    local rv = cfgFolder:FindFirstChild(propName)
                    if rv and rv:IsA("NumberValue") then rv.Value = cfg['Max Range'] or 99999 end
                end
            end
        end
    end)
end
_G.eclipse_infrange_active = function() return infRangeActive end

local bgTarget = nil
local bgTargetTime = 0
local bgRunning = true

local watermarkLabels = {}
for i = 1, 24 do
    local label = Drawing.new('Text')
    label.Size = 26
    label.Center = true
    label.Outline = true
    label.OutlineColor = Color3.new(0, 0, 0)
    label.Font = 3
    label.Visible = false
    label.Color = CLOVER_GREEN
    watermarkLabels[i] = label
end

local function GetWatermarkPosition(position)
    local vp = cam and cam.ViewportSize
    if not vp then
        -- fallback if Camera.ViewportSize is nil
        vp = Vector2.new(1920, 1080)
    end
    local viewportX = vp.X
    local viewportY = vp.Y
    if position == "Top" then return viewportX / 2, 30
    elseif position == "Bottom" then return viewportX / 2, viewportY - 320
    elseif position == "Left" then return 30, viewportY / 2
    elseif position == "Right" then return viewportX - 200, viewportY / 2
    else return viewportX / 2, 30 end
end

local function UpdateWatermark()
    local cfg = shared.eclipse.Watermark
    if not cfg or not cfg.Enabled then
        for _, lbl in ipairs(watermarkLabels) do lbl.Visible = false end
        return
    end
    local baseX, baseY = GetWatermarkPosition(cfg.Position or "Top")
    local offsetY = 0
    local idx = 0
    local STATUS_SIZE = 26
    local LINE_HEIGHT = 30

    local title = watermarkLabels[1]
    title.Text = "Clover.cc"
    title.Color = cfg.Color or CLOVER_GREEN
    title.Size = 26
    title.Font = 3
    title.Position = Vector2.new(baseX, baseY + offsetY)
    title.Visible = true
    offsetY = offsetY + 40
    idx = 1

    local alignX = baseX
    if cfg.Position == "Left" then alignX = baseX + 20
    elseif cfg.Position == "Right" then alignX = baseX - 20 end

    if shared.eclipse.Combat.Silent.Enabled then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        local target = state.target
        local name = target and target.DisplayName or "none"
        local isLocked = target ~= nil
        lbl.Text = string.format("silent aim > %s", name)
        lbl.Color = isLocked and TARGET_RED or CLOVER_GREEN
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if shared.eclipse.Combat.Triggerbot.Enabled and (state.triggeractive or state.triggerhold) then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        local target = state.target
        local name = target and target.DisplayName or "none"
        local isLocked = target ~= nil
        lbl.Text = string.format("triggerbot > %s", name)
        lbl.Color = isLocked and TARGET_RED or CLOVER_GREEN
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if shared.eclipse.Combat.Camlock.Enabled and state.camlockactive then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        local target = state.camtarget
        local name = target and target.DisplayName or "none"
        local isLocked = target ~= nil
        lbl.Text = string.format("camlock > %s", name)
        lbl.Color = isLocked and TARGET_RED or CLOVER_GREEN
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if shared.eclipse.Movement.Speed.Enabled and state.speedactive then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        lbl.Text = "speed"
        lbl.Color = CLOVER_GREEN
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if shared.eclipse.Movement.Spiderman.Enabled and state.spidermanactive then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        lbl.Text = "spiderman"
        lbl.Color = CLOVER_BRIGHT
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if shared.eclipse.Visuals.ESP.Enabled then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        lbl.Text = "esp"
        lbl.Color = CLOVER_GREEN
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if Wallbang and Wallbang.Enabled then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        lbl.Text = "wallbang"
        lbl.Color = CLOVER_BRIGHT
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if RapidFire and RapidFire.Enabled then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        lbl.Text = "rapid fire"
        lbl.Color = CLOVER_BRIGHT
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if InfiniteAmmo and InfiniteAmmo.Enabled then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        lbl.Text = "infinite ammo"
        lbl.Color = CLOVER_BRIGHT
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if AutoKill and AutoKill.Enabled then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        lbl.Text = "autokill"
        lbl.Color = TARGET_RED
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if _G.eclipse_infrange_active and _G.eclipse_infrange_active() then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        lbl.Text = "infinite range"
        lbl.Color = CLOVER_BRIGHT
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if BulletDump and BulletDump.Active then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        lbl.Text = "bullet dump"
        lbl.Color = CLOVER_BRIGHT
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if RageStack and RageStack.RageActive then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        lbl.Text = "rage"
        lbl.Color = CLOVER_BRIGHT
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if RageStack and RageStack.DoubleTapActive then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        lbl.Text = "double tap"
        lbl.Color = CLOVER_BRIGHT
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if AvatarSpoofer and AvatarSpoofer.Applied then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        local tname = AvatarSpoofer.TargetPlayer and AvatarSpoofer.TargetPlayer.DisplayName or AvatarSpoofer.TargetUser or "?"
        lbl.Text = string.format("avatar > %s", tname)
        lbl.Color = CLOVER_BRIGHT
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if Panic and Panic.Active then
        idx = idx + 1
        local lbl = watermarkLabels[idx]
        lbl.Text = "PANIC"
        lbl.Color = TARGET_RED
        lbl.Size = STATUS_SIZE
        lbl.Font = 3
        lbl.Position = Vector2.new(alignX, baseY + offsetY)
        lbl.Visible = true
        offsetY = offsetY + LINE_HEIGHT
    end

    if cfg.Position == "Left" then
        for i = 1, idx do watermarkLabels[i].Center = false watermarkLabels[i].Position = Vector2.new(baseX, watermarkLabels[i].Position.Y) end
    elseif cfg.Position == "Right" then
        for i = 1, idx do watermarkLabels[i].Center = false watermarkLabels[i].Position = Vector2.new(baseX, watermarkLabels[i].Position.Y) end
    else
        for i = 1, idx do watermarkLabels[i].Center = true watermarkLabels[i].Position = Vector2.new(baseX, watermarkLabels[i].Position.Y) end
    end

    for i = idx + 1, #watermarkLabels do watermarkLabels[i].Visible = false end
end

local function isForceHitActive() return shared.eclipse["Select Only"].ForceHit == true end
local function isForceTriggerActive() return shared.eclipse["Select Only"].ForceTrigger == true end

local function HasGunEquippedOptimized()
    local now = tick_func()
    if now - weaponCache.lastCheck < weaponCache.checkInterval then return weaponCache.hasGun end
    weaponCache.lastCheck = now
    local char = lp.Character
    if not char then weaponCache.hasGun = false return false end
    local tool = char:FindFirstChildOfClass("Tool")
    if not tool then weaponCache.hasGun = false return false end
    local name = tool.Name
    if name == "[Knife]" or name == "Knife" or name == "[Bat]" or name == "Bat" then weaponCache.hasGun = false return false end
    local lower = name:lower()
    local isKnownGun = lower:find("rev") or lower:find("shotgun") or lower:find("tac") or lower:find("double") or lower:find("silencer") or lower:find("glock") or lower:find("gun") or lower:find("smg") or lower:find("rifle") or name:find("%[")
    if isKnownGun then weaponCache.hasGun = true return true end
    weaponCache.hasGun = false
    return false
end

local function GetClosestPlayerForSilent()
    if shared.eclipse.Targeting.Mode == "Select" then
        if state.target and state.target.Character then
            local target = state.target
            local char = target.Character
            local head = char:FindFirstChild("Head")
            if head and eclipse:targetvalid() and not eclipse:targetpaused() then
                if isForceHitActive() then return target end
                if shared.eclipse.Checks.Visible and not eclipse:visibleadvanced(cam.CFrame.Position, char) then return nil end
                local screenPos, onScreen = cam:WorldToViewportPoint(head.Position)
                if onScreen then
                    local mousePos = uis:GetMouseLocation()
                    local dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                    local fovRadius = shared.eclipse.Combat.Silent.FOV.Radius or 300
                    if dist < fovRadius then return target end
                end
            end
            return nil
        end
        return nil
    end
    local closest = nil
    local closestDist = math.huge
    local mousePos = uis:GetMouseLocation()
    local campos = cam.CFrame.Position
    for _, plr in pairs(players:GetPlayers()) do
        if plr ~= lp and plr.Character then
            local char = plr.Character
            local head = char:FindFirstChild("Head")
            local root = char:FindFirstChild("HumanoidRootPart")
            if not head or not root then continue end
            local be = char:FindFirstChild('BodyEffects')
            local ko = be and be:FindFirstChild('K.O')
            local ff = char:FindFirstChildOfClass('ForceField')
            if shared.eclipse.Checks.Knock and ko and ko.Value then continue end
            if shared.eclipse.Checks.Forcefield and ff then continue end
            if shared.eclipse.Checks.Crew and eclipse:samecrew(plr) then continue end
            if not isForceHitActive() then
                if shared.eclipse.Checks.Visible and not eclipse:visibleadvanced(campos, char) then continue end
                local screenPos, onScreen = cam:WorldToViewportPoint(head.Position)
                if onScreen then
                    local dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                    local fovRadius = shared.eclipse.Combat.Silent.FOV.Radius or 300
                    if dist < closestDist and dist < fovRadius then
                        closestDist = dist
                        closest = plr
                    end
                end
            else
                local dist = (cam.CFrame.Position - root.Position).Magnitude
                if dist < closestDist then closestDist = dist closest = plr end
            end
        end
    end
    return closest
end

local function GetClosestPlayerForSilentOptimized()
    local now = tick_func()
    if targetCache.player and now - targetCache.lastCheck < 0.01 then
        local target = targetCache.player
        if target and target.Character then
            local head = target.Character:FindFirstChild("Head")
            if head then
                local screenPos, onScreen = cam:WorldToViewportPoint(head.Position)
                if onScreen then
                    local mousePos = uis:GetMouseLocation()
                    local dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                    local fovRadius = shared.eclipse.Combat.Silent.FOV.Radius or 300
                    if dist < fovRadius then return target end
                end
            end
        end
    end
    if bgTarget and now - bgTargetTime < 0.05 then
        local target = bgTarget
        if target and target.Character then
            local head = target.Character:FindFirstChild("Head")
            if head then
                local screenPos, onScreen = cam:WorldToViewportPoint(head.Position)
                if onScreen then
                    local mousePos = uis:GetMouseLocation()
                    local dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                    local fovRadius = shared.eclipse.Combat.Silent.FOV.Radius or 300
                    if dist < fovRadius then
                        targetCache.lastCheck = now
                        targetCache.player = target
                        return target
                    end
                end
            end
        end
    end
    targetCache.lastCheck = now
    local result = GetClosestPlayerForSilent()
    targetCache.player = result
    return result
end

local function FindGunHandler()
    local modulesFolder = rs:FindFirstChild("Modules")
    if modulesFolder then
        local gh = modulesFolder:FindFirstChild("GunHandler")
        if gh then return gh end
    end
    local gh = rs:FindFirstChild("GunHandler")
    if gh then return gh end
    local ms = rs:FindFirstChild("ModuleScripts")
    if ms then
        local gm = ms:FindFirstChild("GunModules")
        if gm then
            gh = gm:FindFirstChild("GunHandler")
            if gh then return gh end
        end
    end
    return nil
end

local function InstallSilentAimHook()
    if HookInstalled then return true end
    local GunHandler = FindGunHandler()
    if not GunHandler then return false end
    local success, handler = pcall(require, GunHandler)
    if not success or not handler then return false end
    local AimKey = nil
    if type(handler.GetAim) == "function" then AimKey = "GetAim"
    elseif type(handler.getAim) == "function" then AimKey = "getAim"
    else return false end
    if not OriginalGetAim then OriginalGetAim = handler[AimKey] end
    if OriginalGetAim then
        handler[AimKey] = function(Origin, MaxDistance, ...)
            if shared.eclipse.Combat.Silent.Enabled and silentEnabled and HasGunEquippedOptimized() then
                local target = GetClosestPlayerForSilentOptimized()
                if target then
                    local char = target.Character
                    if char then
                        local targetPos = nil
                        local hitpart = isForceHitActive() and "Head" or shared.eclipse.Combat.Silent.Hitpart

                        if hitpart == "Closest Point" then
                            local closestData = eclipse:closestpoint(char, false)
                            if closestData and closestData.position then
                                targetPos = closestData.position
                            end
                        end

                        if not targetPos then
                            local part = char:FindFirstChild(hitpart)
                            if part and part:IsA('BasePart') then
                                targetPos = part.Position
                            end
                        end

                        if not targetPos then
                            local head = char:FindFirstChild("Head")
                            if head then targetPos = head.Position end
                        end

                        if not targetPos then
                            local ut = char:FindFirstChild("UpperTorso")
                            if ut then targetPos = ut.Position end
                        end

                        if not targetPos then
                            local root = char:FindFirstChild("HumanoidRootPart")
                            if root then targetPos = root.Position end
                        end

                        if targetPos then
                            local pred = shared.eclipse.Combat.Silent.Prediction
                            local root = char:FindFirstChild("HumanoidRootPart")
                            if root then
                                local vel = root.AssemblyLinearVelocity
                                targetPos = targetPos + Vector3.new(
                                    vel.X * (pred.X or 0),
                                    vel.Y * (pred.Y or 0),
                                    vel.Z * (pred.Z or 0)
                                )
                            end

                            local dir = targetPos - Origin
                            local mag = dir.Magnitude
                            if mag > 0.001 then
                                IsSilentAiming = true
                                SilentTarget = target
                                return dir.Unit, math.min(mag, MaxDistance or 200)
                            end
                        end
                    end
                end
            end
            IsSilentAiming = false
            SilentTarget = nil
            if OriginalGetAim then return OriginalGetAim(Origin, MaxDistance, ...) end
            return nil
        end
        HookInstalled = true
        return true
    end
    return false
end

local function SetupSilentAim()
    task.wait(0.5)
    local attempts = 0
    while attempts < 20 do
        if InstallSilentAimHook() then return end
        attempts = attempts + 1
        task.wait(1)
    end
    warn('[eclipse] silent aim hook failed after 20 attempts')
end

-- Skin Changer
local SkinChanger = {}
SkinChanger.AppliedSkins = {}
SkinChanger.KnifeData = {}
SkinChanger.ToolRegistry = {}
SkinChanger.LastCfgSnapshot = ''

local SkinAssets = rs:FindFirstChild('SkinAssets')
local SkinModules = rs:FindFirstChild('SkinModules')
local SkinData = nil

local function GetSkinChangerCfg() return shared.eclipse.Misc.SkinChanger end
local function IsKnifeSkin(Name)
    if not Name then return false end
    local N = tostring(Name):lower():gsub(' ', ''):gsub('-', '')
    return N == 'goldenagetanto' or N == 'gpoknife' or N == 'gpoknifeprestige' or N == 'heaven' or N == 'lovekukri' or N == 'purpledagger' or N == 'bluedagger' or N == 'greendagger' or N == 'reddagger'
end
local function NormalizeKey(Value) return tostring(Value):lower():gsub('[%s%-_%(%)%[%]]', '') end

local function TableFind(Tbl, Want)
    if not Tbl or type(Tbl) ~= 'table' or not Want then return nil end
    if Tbl[Want] then return Tbl[Want], Want end
    local WantNorm = NormalizeKey(Want)
    for K, V in next, Tbl do
        if type(K) == 'string' and NormalizeKey(K) == WantNorm then return V, K end
    end
    return nil
end

local function LoadSkinData()
    if SkinData then return SkinData end
    if not SkinModules then SkinModules = rs:FindFirstChild('SkinModules') or rs:WaitForChild('SkinModules', 5) end
    if not SkinModules then warn('[eclipse] SkinModules missing') return nil end
    if SkinModules:IsA('ModuleScript') then
        local Clone = SkinModules:Clone()
        Clone.Parent = nil
        local Success, Result = pcall(require, Clone)
        pcall(function() Clone:Destroy() end)
        if Success and type(Result) == 'table' then SkinData = Result
        else warn('[eclipse] SkinModules require failed:', Result) end
    end
    if not SkinData and (SkinModules:IsA('Folder') or SkinModules:IsA('Model')) then
        local Merged = {}
        for _, Child in next, SkinModules:GetChildren() do
            if Child:IsA('ModuleScript') then
                local Ok, Sub = pcall(require, Child)
                if Ok and type(Sub) == 'table' then
                    for K, V in next, Sub do Merged[K] = V end
                end
            end
        end
        if next(Merged) then SkinData = Merged end
    end
    return SkinData
end

local function DeepFindSkin(Wanted)
    local Data = LoadSkinData()
    if not Data then return nil, nil end
    local WantNorm = NormalizeKey(Wanted)
    local function walk(node, depth)
        if depth > 6 then return nil, nil end
        if typeof(node) == 'Instance' then
            if NormalizeKey(node.Name) == WantNorm then return node, node end
            return nil, nil
        end
        if type(node) ~= 'table' then return nil, nil end
        for K, V in next, node do
            if type(K) == 'string' and NormalizeKey(K) == WantNorm then
                if type(V) == 'table' then return V, nil end
                if typeof(V) == 'Instance' then return V, V end
                return V, nil
            end
        end
        for _, V in next, node do
            local Hit, Inst = walk(V, depth + 1)
            if Hit or Inst then return Hit, Inst end
        end
        return nil, nil
    end
    return walk(Data, 0)
end

local function PhysicalFindSkin(Wanted)
    if not SkinModules then return nil end
    local WantNorm = NormalizeKey(Wanted)
    local Found = nil
    local function scan(Node, Depth)
        if Found or Depth > 6 then return end
        for _, Child in next, Node:GetChildren() do
            if Child.Name ~= '' and NormalizeKey(Child.Name) == WantNorm then
                if Child:IsA('MeshPart') or Child:IsA('BasePart') then Found = Child return end
                for _, Sub in next, Child:GetDescendants() do
                    if Sub:IsA('MeshPart') then Found = Sub return end
                end
            end
            if Child:IsA('Folder') or Child:IsA('Model') then scan(Child, Depth + 1) end
        end
    end
    scan(SkinModules, 0)
    return Found
end

local function GetSkinInfo(WeaponName, SkinName)
    local Data = LoadSkinData()
    if not Data then return nil end
    local WeaponEntry = TableFind(Data, WeaponName)
    if type(WeaponEntry) == 'table' then
        local Info = TableFind(WeaponEntry, SkinName)
        if Info then return Info end
    end
    local Bracketed = '[' .. WeaponName:gsub('[%[%]]', '') .. ']'
    local BracketedEntry = TableFind(Data, Bracketed)
    if type(BracketedEntry) == 'table' then
        local Info = TableFind(BracketedEntry, SkinName)
        if Info then return Info end
    end
    local FlatInfo = TableFind(Data, SkinName)
    if FlatInfo then return FlatInfo end
    local Deep = DeepFindSkin(SkinName)
    if Deep then return Deep end
    return nil
end

local function FindSourceMesh(SkinName, WeaponName, IsKnife)
    local _, DirectInst = DeepFindSkin(SkinName)
    if DirectInst and typeof(DirectInst) == 'Instance' then return DirectInst end
    local Phys = PhysicalFindSkin(SkinName)
    if Phys then return Phys end
    return nil
end

local function ExtractMeshFromInfo(Info)
    if not Info then return nil end
    if typeof(Info) == 'Instance' then
        if Info:IsA('MeshPart') then return Info end
        local m = Info:FindFirstChildOfClass('MeshPart') or Info:FindFirstChildOfClass('BasePart')
        return m
    end
    if type(Info) == 'table' then
        for _, key in ipairs({'TextureID','Mesh','MeshPart','Model','CFrame','Texture'}) do
            if Info[key] then
                local V = Info[key]
                if typeof(V) == 'Instance' and V:IsA('MeshPart') then return V end
                if typeof(V) == 'Instance' then
                    local m = V:FindFirstChildOfClass('MeshPart') or V:FindFirstChildOfClass('BasePart')
                    if m then return m end
                end
            end
        end
        for _, V in next, Info do
            if typeof(V) == 'Instance' and V:IsA('MeshPart') then return V end
        end
    end
    return nil
end

local function ExtractTextureFromInfo(Info)
    if type(Info) ~= 'table' then return nil end
    for _, key in ipairs({'TextureID','Texture','TextureId'}) do
        local V = Info[key]
        if type(V) == 'string' and V ~= '' then return V end
    end
    return nil
end

local function HideKnifeDefaults(Tool, SkinRoot)
    local Hidden = {}
    for _, Desc in next, Tool:GetDescendants() do
        if not Desc:IsA('BasePart') then continue end
        if Desc.Name == 'Handle.R' or (Desc.Parent == Tool and Desc.Name == 'Handle') then continue end
        if Desc:GetAttribute('_skinclone') or (SkinRoot and (Desc == SkinRoot or Desc:IsDescendantOf(SkinRoot))) then continue end
        Hidden[Desc] = { Transparency = Desc.Transparency, LocalTransparencyModifier = Desc.LocalTransparencyModifier }
        Desc.Transparency = 1
        Desc.LocalTransparencyModifier = 1
    end
    return Hidden
end

local function RestoreKnifeDefaults(Hidden)
    if not Hidden then return end
    for Part, State in next, Hidden do
        if Part and Part.Parent and type(State) == 'table' then
            Part.Transparency = State.Transparency
            Part.LocalTransparencyModifier = State.LocalTransparencyModifier
        end
    end
end

local function CleanKnife(Tool, SkipRestore)
    local Data = SkinChanger.KnifeData[Tool]
    local KeptHidden = SkipRestore and Data and Data.hiddenParts or nil
    if Data then
        if Data.track then pcall(function() Data.track:Stop() Data.track:Destroy() end) Data.track = nil end
        if Data.welds then for _, W in next, Data.welds do if W then pcall(function() W:Destroy() end) end end end
        if Data.sounds then for _, S in next, Data.sounds do if S and S.Parent then pcall(function() S:Destroy() end) end end end
        if not SkipRestore then RestoreKnifeDefaults(Data.hiddenParts) KeptHidden = nil end
    end
    local Mesh = Tool:FindFirstChild('Default')
    if Mesh then
        for _, V in next, Mesh:GetChildren() do
            if V.Name == 'Handle.R' or V:GetAttribute('_skinclone') then V:Destroy() end
        end
    end
    SkinChanger.KnifeData[Tool] = nil
    return KeptHidden
end

local function ApplyKnife(Character, Tool, SkinName)
    if Tool.Parent ~= Character then return end
    local Humanoid = Character:FindFirstChild('Humanoid')
    local RHand = Character:FindFirstChild('RightHand')
    if not Humanoid or not RHand then return end
    local KnifeModel = FindSourceMesh(SkinName, Tool.Name, true)
    if not KnifeModel then warn('[eclipse] no mesh for knife skin:', SkinName) return end
    local KeptHidden = CleanKnife(Tool, true)
    SkinChanger.KnifeData[Tool] = { track = nil, welds = {}, sounds = {}, hiddenParts = KeptHidden }
    local Data = SkinChanger.KnifeData[Tool]
    local Mesh = Tool:FindFirstChild('Default')
    if not Mesh then return end
    if not Data.hiddenParts then Data.hiddenParts = HideKnifeDefaults(Tool, nil) end
    local Clone = KnifeModel:Clone()
    Clone.Name = SkinName
    Clone:SetAttribute('_skinclone', true)
    local HandleR = Instance.new('Part')
    HandleR.Name = 'Handle.R'
    HandleR.Transparency = 1
    HandleR.CanCollide = false
    HandleR.Anchored = false
    HandleR.Size = Vector3.new(0.001, 0.001, 0.001)
    HandleR.Massless = true
    HandleR.Parent = Mesh
    local M6D = Instance.new('Motor6D')
    M6D.Name = 'Handle.R'
    M6D.Part0 = RHand
    M6D.Part1 = HandleR
    M6D.Parent = HandleR
    local N = NormalizeKey(SkinName)
    local Offset = CFrame.new()
    local AnimId, SndId
    if N == 'goldenagetanto' then
        Offset = CFrame.new(0, -0.20, -1.2) * CFrame.Angles(math.rad(90), math.rad(263.7), math.rad(180))
        AnimId = 'rbxassetid://13473404819'; SndId = 'rbxassetid://5917819099'
    elseif N == 'gpoknife' or N == 'gpoknifeprestige' then
        Offset = CFrame.new(0, -0.32, -1.07) * CFrame.Angles(math.rad(90), math.rad(-97.4), math.rad(90))
        AnimId = 'rbxassetid://14014278925'; SndId = 'rbxassetid://4604390759'
    elseif N == 'heaven' then
        Offset = CFrame.new(-0.02, -0.82, 0.20) * CFrame.Angles(math.rad(64.42), math.rad(3.79), math.rad(0))
        AnimId = 'rbxassetid://14500266726'; SndId = 'rbxassetid://14489860007'
    elseif N == 'lovekukri' then
        Offset = CFrame.new(-0.14, 0.14, -1.62) * CFrame.Angles(math.rad(-90), math.rad(180), math.rad(-4.97))
    elseif N == 'purpledagger' then
        Offset = CFrame.new(-0.13, -0.24, -1.80) * CFrame.Angles(math.rad(89.05), math.rad(96.63), math.rad(180))
        AnimId = 'rbxassetid://17824999722'; SndId = 'rbxassetid://17822743153'
    elseif N == 'bluedagger' then
        Offset = CFrame.new(-0.13, -0.24, -1.80) * CFrame.Angles(math.rad(89.05), math.rad(96.63), math.rad(180))
        AnimId = 'rbxassetid://17824995184'; SndId = 'rbxassetid://17822737046'
    elseif N == 'greendagger' then
        Offset = CFrame.new(-0.13, -0.24, -1.07) * CFrame.Angles(math.rad(89.05), math.rad(96.63), math.rad(180))
        AnimId = 'rbxassetid://17825004320'; SndId = 'rbxassetid://17822741762'
    elseif N == 'reddagger' then
        Offset = CFrame.new(-0.13, -0.24, -1.07) * CFrame.Angles(math.rad(89.05), math.rad(96.63), math.rad(180))
        AnimId = 'rbxassetid://17825008844'; SndId = 'rbxassetid://17822952417'
    end
    if Clone:IsA('Model') then
        if not Clone.PrimaryPart then
            for _, C in next, Clone:GetChildren() do
                if C:IsA('BasePart') then Clone.PrimaryPart = C break end
            end
        end
        if Clone.PrimaryPart then
            for _, P in next, Clone:GetDescendants() do
                if P:IsA('BasePart') then
                    P.CanCollide = false
                    P.Massless = true
                    P.Anchored = false
                    local W = Instance.new('Weld')
                    W.Part0 = HandleR
                    W.Part1 = P
                    W.C0 = Offset
                    W.C1 = P.CFrame:ToObjectSpace(Clone.PrimaryPart.CFrame)
                    W.Parent = P
                    table.insert(Data.welds, W)
                end
            end
        end
        Clone.Parent = Mesh
    elseif Clone:IsA('BasePart') then
        Clone.CanCollide = false
        Clone.Massless = true
        Clone.Anchored = false
        Clone.Parent = Mesh
        local W = Instance.new('Weld')
        W.Part0 = HandleR
        W.Part1 = Clone
        W.C0 = Offset
        W.Parent = Clone
        table.insert(Data.welds, W)
    end
    Data.hiddenParts = HideKnifeDefaults(Tool, Clone)
    local Animator = Humanoid:FindFirstChildOfClass('Animator') or Instance.new('Animator', Humanoid)
    if AnimId then
        local Anim = Instance.new('Animation')
        Anim.AnimationId = AnimId
        local Track = Animator:LoadAnimation(Anim)
        Track.Looped = false
        Track:Play()
        Data.track = Track
        Anim:Destroy()
        Track.Ended:Once(function()
            if Data.track == Track then Data.track = nil end
            Track:Destroy()
        end)
    end
    if SndId then
        local Snd = Instance.new('Sound')
        Snd.SoundId = SndId
        Snd.Parent = workspace
        Snd:Play()
        table.insert(Data.sounds, Snd)
        Snd.Ended:Connect(function() Snd:Destroy() end)
    end
end

local function HideOriginalGunMeshes(Tool, Default, SkinClone)
    local HiddenParts = {}
    local KeepVisible = { Muzzle = true, Aim = true }
    for _, Desc in next, Tool:GetDescendants() do
        if Desc:IsA('BasePart') then
            if SkinClone and (Desc == SkinClone or Desc:IsDescendantOf(SkinClone)) then continue end
            if KeepVisible[Desc.Name] then continue end
            if Desc == Default or Desc:IsDescendantOf(Default) then
                HiddenParts[Desc] = Desc.Transparency
                Desc.Transparency = 1
            end
        end
    end
    return HiddenParts
end

local function ApplyGunSkinMesh(Default, SkinMesh, SkinCFrame)
    local Clone = SkinMesh:Clone()
    Clone.Anchored = false
    Clone.CanCollide = false
    Clone.Name = '\0'
    Clone.CFrame = Default.CFrame
    local Weld = Instance.new('Weld')
    Weld.Part0 = Clone
    Weld.Part1 = Default
    Weld.C0 = (SkinCFrame or CFrame.new()):Inverse()
    Weld.Name = '\0'
    Weld.Parent = Clone
    Default.Transparency = 1
    Clone.Parent = Default
    return Clone
end

local function GetShootSound(WeaponName, SkinName)
    if not SkinAssets then return nil end
    local GunShootSounds = SkinAssets:FindFirstChild('GunShootSounds')
    if not GunShootSounds then return nil end
    local WeaponFolder = GunShootSounds:FindFirstChild(WeaponName) or GunShootSounds:FindFirstChild('[' .. WeaponName .. ']')
    if not WeaponFolder then return nil end
    local SoundValue = WeaponFolder:FindFirstChild(SkinName) or WeaponFolder:FindFirstChild(SkinName:gsub('-', ' ')) or WeaponFolder:FindFirstChild(SkinName:gsub('-', ''))
    if SoundValue and SoundValue:IsA('StringValue') then return SoundValue.Value end
    return nil
end

local function ApplyGunHandleParticle(Tool, Handle, SkinName)
    if not SkinAssets or not Tool or not Handle then return end
    local Data = SkinChanger.AppliedSkins[Tool]
    if not Data then return end
    local GunHandleParticle = SkinAssets:FindFirstChild('GunHandleParticle')
    if not GunHandleParticle then return end
    local ParticleFolder = GunHandleParticle:FindFirstChild(SkinName) or GunHandleParticle:FindFirstChild(SkinName:gsub('-', ' ')) or GunHandleParticle:FindFirstChild(SkinName:gsub('-', ''))
    if not ParticleFolder then return end
    local Emitter = ParticleFolder:FindFirstChildOfClass('ParticleEmitter')
    if not Emitter then return end
    local ClonedParticle = Emitter:Clone()
    ClonedParticle.Parent = Handle
    ClonedParticle.Name = '\0'
    table.insert(Data.ClonedChildren, ClonedParticle)
end

local function RemoveSkinFromTool(Tool)
    if not Tool or not SkinChanger.AppliedSkins[Tool] then return end
    CleanKnife(Tool)
    local Original = SkinChanger.AppliedSkins[Tool]
    if Original.Connections then
        for _, Connection in next, Original.Connections do
            if Connection and Connection.Connected then Connection:Disconnect() end
        end
    end
    for _, Child in next, Original.ClonedChildren or {} do
        if Child and Child.Parent then Child:Destroy() end
    end
    if Original.HiddenParts then
        for Part, Transparency in next, Original.HiddenParts do
            if Part and Part.Parent then Part.Transparency = Transparency end
        end
    end
    if Original.Default and Original.Default.Parent then
        for _, Child in next, Original.Default:GetChildren() do
            if Child.Name == '\0' then Child:Destroy() end
        end
        Original.Default.Transparency = Original.OriginalTransparency or 0
        Original.Default.LocalTransparencyModifier = Original.OriginalLTM or 0
        Original.Default.TextureID = Original.OriginalTextureID or ''
    end
    for _, Child in next, Tool:GetChildren() do
        if Child.Name == '\0' then Child:Destroy() end
    end
    if Original.OriginalGripCFrame then pcall(function() Tool.GripCFrame = Original.OriginalGripCFrame end) end
    if Original.ShootSound and Original.OriginalShootSoundId then Original.ShootSound.SoundId = Original.OriginalShootSoundId end
    local Handle = Tool:FindFirstChild('Handle')
    if Handle then
        Handle:SetAttribute('SkinName', Original.OriginalSkinName or '')
        for _, Child in next, Handle:GetChildren() do
            if Child.Name == '\0' then Child:Destroy() end
        end
    end
    SkinChanger.AppliedSkins[Tool] = nil
end

local function ApplySkinToTool(Tool, SkinName)
    if not Tool then return end
    if SkinChanger.AppliedSkins[Tool] and SkinChanger.AppliedSkins[Tool].SkinName == SkinName then return end
    local Handle = Tool:FindFirstChild('Handle')
    if not Handle then return end
    local Default = Tool:FindFirstChild('Default')
    if not Default or not Default:IsA('MeshPart') then
        Default = Handle:FindFirstChildOfClass('MeshPart')
        if not Default then
            for _, Child in next, Tool:GetDescendants() do
                if Child:IsA('MeshPart') then Default = Child break end
            end
        end
    end
    if not Default then return end
    local ShootSound = nil
    for _, Child in next, Tool:GetDescendants() do
        if Child:IsA('Sound') and (Child.Name == 'Shoot' or Child.Name == 'ShootSound') then ShootSound = Child break end
    end
    if SkinChanger.AppliedSkins[Tool] then RemoveSkinFromTool(Tool) end
    SkinChanger.AppliedSkins[Tool] = {
        SkinName = SkinName,
        OriginalTextureID = Default.TextureID,
        OriginalTransparency = Default.Transparency,
        OriginalSkinName = Handle:GetAttribute('SkinName') or '',
        Default = Default,
        ShootSound = ShootSound,
        OriginalShootSoundId = ShootSound and ShootSound.SoundId or nil,
        ClonedChildren = {},
        Connections = {},
        HiddenParts = {},
    }
    Handle:SetAttribute('SkinName', SkinName)
    local AttrConn = Handle:GetAttributeChangedSignal('SkinName'):Connect(function()
        if Handle:GetAttribute('SkinName') ~= SkinName then Handle:SetAttribute('SkinName', SkinName) end
    end)
    table.insert(SkinChanger.AppliedSkins[Tool].Connections, AttrConn)
    local SkinInfo = GetSkinInfo(Tool.Name, SkinName)
    local SkinCFrame = nil
    if type(SkinInfo) == 'table' and typeof(SkinInfo.CFrame) == 'CFrame' then SkinCFrame = SkinInfo.CFrame end
    local Mesh = ExtractMeshFromInfo(SkinInfo) or FindSourceMesh(SkinName, Tool.Name, false)
    if Mesh then
        local NewFake = ApplyGunSkinMesh(Default, Mesh, SkinCFrame)
        SkinChanger.AppliedSkins[Tool].HiddenParts = HideOriginalGunMeshes(Tool, Default, NewFake)
        table.insert(SkinChanger.AppliedSkins[Tool].ClonedChildren, NewFake)
    else
        local Tex = ExtractTextureFromInfo(SkinInfo)
        if Tex then
            SkinChanger.AppliedSkins[Tool].HiddenParts = HideOriginalGunMeshes(Tool, Default, nil)
            Default.TextureID = Tex
            Default.Transparency = 0
        end
    end
    for _, Child in next, Handle:GetChildren() do
        if #Child.Name == 0 then Child:Destroy() end
    end
    ApplyGunHandleParticle(Tool, Handle, SkinName)
    local SoundId = GetShootSound(Tool.Name, SkinName)
    if SoundId and SkinChanger.AppliedSkins[Tool].ShootSound then SkinChanger.AppliedSkins[Tool].ShootSound.SoundId = SoundId end
end

local function GetDesiredSkin(Tool)
    local SkinChangerCfg = GetSkinChangerCfg()
    if not SkinChangerCfg or not SkinChangerCfg['Enabled'] then return nil end
    local Skins = SkinChangerCfg['DaHood'] or SkinChangerCfg['Skins']
    if not Skins then return nil end
    local ConfiguredSkin = Skins[Tool.Name]
    if not ConfiguredSkin then
        local Stripped = Tool.Name:gsub('%[', ''):gsub('%]', '')
        ConfiguredSkin = Skins['[' .. Stripped .. ']']
    end
    if not ConfiguredSkin or ConfiguredSkin == '' or ConfiguredSkin == 'None' or ConfiguredSkin == 'Default' then return nil end
    return ConfiguredSkin
end

local function ProcessTool(Tool)
    if not Tool or not Tool:IsA('Tool') then return end
    local DesiredSkin = GetDesiredSkin(Tool)
    local CurrentApplied = SkinChanger.AppliedSkins[Tool]
    local CurrentSkin = CurrentApplied and CurrentApplied.SkinName or nil
    if CurrentSkin == DesiredSkin then return end
    if CurrentApplied then RemoveSkinFromTool(Tool) end
    if not DesiredSkin then SkinChanger.ToolRegistry[Tool] = nil return end
    SkinChanger.ToolRegistry[Tool] = DesiredSkin
    local IsKnife = Tool.Name:lower():find('knife') ~= nil or Tool.Name == '[Knife]'
    if IsKnife and IsKnifeSkin(DesiredSkin) then
        local Handle = Tool:FindFirstChild('Handle')
        if not Handle then return end
        SkinChanger.AppliedSkins[Tool] = { SkinName = DesiredSkin, OriginalSkinName = Handle:GetAttribute('SkinName') or '', ClonedChildren = {}, Connections = {} }
        Handle:SetAttribute('SkinName', DesiredSkin)
        local AttrConn = Handle:GetAttributeChangedSignal('SkinName'):Connect(function()
            if Handle:GetAttribute('SkinName') ~= DesiredSkin then Handle:SetAttribute('SkinName', DesiredSkin) end
        end)
        table.insert(SkinChanger.AppliedSkins[Tool].Connections, AttrConn)
        ApplyGunHandleParticle(Tool, Handle, DesiredSkin)
        if not SkinChanger.KnifeData[Tool] or not SkinChanger.KnifeData[Tool].hiddenParts then
            SkinChanger.KnifeData[Tool] = SkinChanger.KnifeData[Tool] or {}
            SkinChanger.KnifeData[Tool].hiddenParts = HideKnifeDefaults(Tool, nil)
        end
        local EquipConn
        EquipConn = Tool.Equipped:Connect(function()
            if not SkinChanger.AppliedSkins[Tool] then
                if EquipConn then EquipConn:Disconnect() end
                return
            end
            local Char = Tool.Parent
            if Char ~= lp.Character then return end
            ApplyKnife(Char, Tool, DesiredSkin)
        end)
        table.insert(SkinChanger.AppliedSkins[Tool].Connections, EquipConn)
        if lp.Character and Tool.Parent == lp.Character then ApplyKnife(lp.Character, Tool, DesiredSkin) end
    else
        ApplySkinToTool(Tool, DesiredSkin)
        if not SkinChanger.AppliedSkins[Tool] then return end
        local EquipConn
        EquipConn = Tool.Equipped:Connect(function()
            if not SkinChanger.AppliedSkins[Tool] then
                if EquipConn then EquipConn:Disconnect() end
                return
            end
            local Char = Tool.Parent
            if Char ~= lp.Character then return end
            ApplySkinToTool(Tool, DesiredSkin)
        end)
        table.insert(SkinChanger.AppliedSkins[Tool].Connections, EquipConn)
        if lp.Character and Tool.Parent == lp.Character then ApplySkinToTool(Tool, DesiredSkin) end
    end
end

local function ProcessCharacter(Character)
    if not Character then return end
    for _, Child in next, Character:GetChildren() do
        if Child:IsA('Tool') then ProcessTool(Child) end
    end
    Character.ChildAdded:Connect(function(Child)
        if Child:IsA('Tool') then
            task.wait(0.1)
            ProcessTool(Child)
        end
    end)
end

local function ProcessBackpack(Backpack)
    if not Backpack then return end
    for _, Tool in next, Backpack:GetChildren() do
        if Tool:IsA('Tool') then ProcessTool(Tool) end
    end
    Backpack.ChildAdded:Connect(function(Tool)
        if Tool:IsA('Tool') then
            task.wait(0.1)
            ProcessTool(Tool)
        end
    end)
end

local function RescanAllTools()
    local Char = lp.Character
    if Char then
        for _, Child in next, Char:GetChildren() do
            if Child:IsA('Tool') then ProcessTool(Child) end
        end
    end
    local Bp = lp:FindFirstChildOfClass('Backpack')
    if Bp then
        for _, Child in next, Bp:GetChildren() do
            if Child:IsA('Tool') then ProcessTool(Child) end
        end
    end
    for Tool in next, SkinChanger.ToolRegistry do
        if not Tool.Parent then SkinChanger.ToolRegistry[Tool] = nil end
    end
end

local function InitSkinChanger()
    LoadSkinData()
    local Character = lp.Character or lp.CharacterAdded:Wait()
    local Backpack = lp:WaitForChild('Backpack', 5)
    ProcessCharacter(Character)
    if Backpack then ProcessBackpack(Backpack) end
    lp.CharacterAdded:Connect(function(NewCharacter)
        task.wait(0.5)
        ProcessCharacter(NewCharacter)
        local NewBackpack = lp:WaitForChild('Backpack', 5)
        if NewBackpack then ProcessBackpack(NewBackpack) end
    end)
    runservice.Heartbeat:Connect(function()
        local SkinCfg = GetSkinChangerCfg()
        if not SkinCfg then return end
        local Snapshot = tostring(SkinCfg['Enabled'])
        local Skins = SkinCfg['DaHood'] or SkinCfg['Skins']
        if Skins then
            for K, V in next, Skins do Snapshot = Snapshot .. K .. tostring(V) end
        end
        if Snapshot ~= SkinChanger.LastCfgSnapshot then
            SkinChanger.LastCfgSnapshot = Snapshot
            RescanAllTools()
        end
    end)
end

local weaponmap = {
    ['Double-Barrel SG'] = 'DoubleSG',
    ['TacticalShotgun'] = 'TacticalShotgun',
    ['Shotgun'] = 'Shotgun',
    ['DrumShotgun'] = 'DrumShotgun',
    ['Revolver'] = 'Revolver',
    ['Silencer'] = 'Silencer'
}

local function resetAllToggles()
    state.triggeractive = false
    state.triggerhold = false
    state.camlockactive = false
    state.speedactive = false
    state.triggerFrameCount = 0
    state.lastTriggerTarget = nil
end

local function getWeaponSpecificFOV(section)
    local baseFOV = shared.eclipse.Combat[section].FOV
    local weaponConfig = shared.eclipse.Combat[section]['Weapon FOV Configuration']
    if weaponConfig and weaponConfig.Enabled then
        local currentWeapon = eclipse:getweapon()
        if currentWeapon then
            local cleanWeaponName = currentWeapon:gsub('[%[%]]', '')
            local weaponFOV = weaponConfig[cleanWeaponName]
            if weaponFOV then
                return { Type = baseFOV.Type, Show = baseFOV.Show, Radius = baseFOV.Radius, X = weaponFOV.X, Y = weaponFOV.Y, Z = weaponFOV.Z }
            end
            if weaponConfig.Other then
                return { Type = baseFOV.Type, Show = baseFOV.Show, Radius = baseFOV.Radius, X = weaponConfig.Other.X, Y = weaponConfig.Other.Y, Z = weaponConfig.Other.Z }
            end
        end
    end
    return baseFOV
end

local function getWeaponHitboxMultipliers()
    local expanderConfig = shared.eclipse["Combat Enhancements"]["Hitbox Expander"]
    local weaponConfig = expanderConfig["Weapon Configuration"]
    local currentWeapon = eclipse:getweapon()
    if currentWeapon then
        local cleanWeaponName = currentWeapon:gsub('[%[%]]', '')
        local weaponMultipliers = weaponConfig[cleanWeaponName]
        if weaponMultipliers then return { X = weaponMultipliers.X or 1, Y = weaponMultipliers.Y or 1, Z = weaponMultipliers.Z or 1 } end
        if weaponConfig.Other then return { X = weaponConfig.Other.X or 1, Y = weaponConfig.Other.Y or 1, Z = weaponConfig.Other.Z or 1 } end
    end
    return { X = 1, Y = 1, Z = 1 }
end

function eclipse:getperspective()
    local zoom = (cam.CFrame.Position - cam.Focus.Position).Magnitude
    return zoom < 1, zoom >= 1
end

function eclipse:getweapon()
    local char = lp.Character
    if not char then return nil end
    local tool = char:FindFirstChildOfClass('Tool')
    return tool and tool.Name:gsub('[%[%]]', '') or nil
end

function eclipse:getshotgun()
    local wep = self:getweapon()
    return wep and weapons.shotgun[wep] and wep or nil
end

function eclipse:triggerdist()
    local cfg = shared.eclipse.Combat.Triggerbot
    local wdist = cfg.WeaponDistances
    if not wdist or not wdist.Enabled then return cfg.Distance or 300 end
    local wep = self:getweapon()
    local mapped = weaponmap[wep]
    return mapped and wdist[mapped] or cfg.Distance or 300
end

function eclipse:splitfov(section)
    local fov
    if section == 'Silent' then fov = getWeaponSpecificFOV('Silent')
    elseif section == 'Triggerbot' then fov = getWeaponSpecificFOV('Triggerbot')
    else fov = (section == 'Silent' and shared.eclipse.Combat.Silent.FOV) or (section == 'Triggerbot' and shared.eclipse.Combat.Triggerbot.FOV) or nil end
    if not fov then return { xleft = 12, xright = 12, yupper = 12, ylower = 12, zleft = 12, zright = 12 } end
    if fov.Type == "2D" then
        local r = fov.Radius or 150
        return { xleft = r, xright = r, yupper = r, ylower = r, zleft = 9999, zright = 9999 }
    else
        local sx = fov.X or 5
        local sy = fov.Y or 5
        local sz = fov.Z or 5
        return { xleft = sx / 2, xright = sx / 2, yupper = sy / 2, ylower = sy / 2, zleft = sz / 2, zright = sz / 2 }
    end
end

function eclipse:visible(origin, part, char)
    if not shared.eclipse.Checks.Visible then return true end
    if not part or not part:IsA('BasePart') then return false end
    local dir = part.Position - origin
    if dir.Magnitude <= 0 then return true end
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = {lp.Character, char}
    return not workspace:Raycast(origin, dir, params)
end

function eclipse:visibleadvanced(origin, char)
    if not shared.eclipse.Checks.Visible then return true end
    if not char then return false end
    for _, name in ipairs({'Head', 'UpperTorso', 'HumanoidRootPart'}) do
        local part = char:FindFirstChild(name)
        if part and part:IsA('BasePart') and self:visible(origin, part, char) then return true end
    end
    return false
end

function eclipse:samecrew(target)
    if not shared.eclipse.Checks.Crew then return false end
    local lc, tc = lp:GetAttribute('CrewID'), target:GetAttribute('CrewID')
    return lc and tc and lc == tc
end

function eclipse:knocked(target)
    if not target or not target.Character then return false end
    local be = target.Character:FindFirstChild('BodyEffects')
    local ko = be and be:FindFirstChild('K.O')
    return ko and ko.Value
end

function eclipse:selfknocked()
    local be = lp.Character and lp.Character:FindFirstChild('BodyEffects')
    local ko = be and be:FindFirstChild('K.O')
    return ko and ko.Value
end

function eclipse:targetpaused()
    if not state.target or not state.target.Character then return true end
    local char = state.target.Character
    local be = char:FindFirstChild('BodyEffects')
    local ko = be and be:FindFirstChild('K.O')
    local ff = char:FindFirstChildOfClass('ForceField')
    if shared.eclipse.Checks.KO and ko and ko.Value then return true end
    if shared.eclipse.Checks.Forcefield and ff then return true end
    return false
end

function eclipse:distancetotarget()
    if not state.target or not state.target.Character then return math.huge end
    local troot = state.target.Character:FindFirstChild('HumanoidRootPart')
    local lroot = lp.Character and lp.Character:FindFirstChild('HumanoidRootPart')
    if not troot or not lroot then return math.huge end
    return (troot.Position - lroot.Position).Magnitude
end

function eclipse:closestpointfast(char)
    if not char or not char.Parent then return nil end
    local mpos = uis:GetMouseLocation()
    local best, bdist, bpos = nil, 1e9, nil
    for _, name in ipairs(parts.priority) do
        local part = char:FindFirstChild(name)
        if part and part:IsA('BasePart') then
            local s = cam:WorldToViewportPoint(part.Position)
            if s.Z > 0 then
                local d = (Vector2.new(s.X, s.Y) - mpos).Magnitude^2
                if d < bdist then bdist, best, bpos = d, part, part.Position end
            end
        end
    end
    if best then return {part = best, position = bpos} end
    local root = char:FindFirstChild('HumanoidRootPart')
    return root and {part = root, position = root.Position}
end

function eclipse:closestpoint(char, iscam)
    if not char or not char.Parent then return nil end
    if state.target and state.target.Character == char then
        local currentFrame = lastFrameNumber
        if closestPointFrameCache.char == char and closestPointFrameCache.frame == currentFrame then return closestPointFrameCache.result end
    end
    local now = tick_func()
    local root = char:FindFirstChild("HumanoidRootPart")
    local posHash = root and (tostring_func(math_floor(root.Position.X * 10)) .. "," .. tostring_func(math_floor(root.Position.Y * 10)) .. "," .. tostring_func(math_floor(root.Position.Z * 10))) or "0,0,0"
    local entry = closestPointLongCache[char]
    if entry and entry.iscam == iscam and (now - entry.timestamp) < CACHE_VALID_TIME and entry.lastPosHash == posHash then return entry.result end
    local mpos = uis:GetMouseLocation()
    local campos = cam.CFrame.Position
    if shared.eclipse.Checks.Visible and not eclipse:visibleadvanced(campos, char) then
        if root then
            local fallback = {part = root, position = root.Position}
            closestPointLongCache[char] = {result = fallback, timestamp = now, iscam = iscam, lastPosHash = posHash}
            if state.target and state.target.Character == char then
                closestPointFrameCache.char = char
                closestPointFrameCache.result = fallback
                closestPointFrameCache.frame = lastFrameNumber
            end
            return fallback
        end
        return nil
    end
    local priorityParts = parts.priority
    local best, bdist, bpos = nil, 1e12, nil
    if root then
        local center, on = cam:WorldToViewportPoint(root.Position)
        if not on or center.Z > 250 then
            local fallback = eclipse:closestpointfast(char)
            closestPointLongCache[char] = {result = fallback, timestamp = now, iscam = iscam, lastPosHash = posHash}
            if state.target and state.target.Character == char then
                closestPointFrameCache.char = char
                closestPointFrameCache.result = fallback
                closestPointFrameCache.frame = lastFrameNumber
            end
            return fallback
        end
        local distToMouse = (Vector2.new(center.X, center.Y) - mpos).Magnitude
        if distToMouse > 450 then
            local fallback = eclipse:closestpointfast(char)
            closestPointLongCache[char] = {result = fallback, timestamp = now, iscam = iscam, lastPosHash = posHash}
            if state.target and state.target.Character == char then
                closestPointFrameCache.char = char
                closestPointFrameCache.result = fallback
                closestPointFrameCache.frame = lastFrameNumber
            end
            return fallback
        end
    end
    local ray = cam:ViewportPointToRay(mpos.X, mpos.Y)
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Include
    params.FilterDescendantsInstances = {char}
    params.IgnoreWater = true
    local result = workspace:Raycast(ray.Origin, ray.Direction * 500, params)
    if result and result.Instance:IsDescendantOf(char) then
        local hitpos = result.Position
        local s, on = cam:WorldToViewportPoint(hitpos)
        if on and s.Z > 0 then
            local res = {part = result.Instance, position = hitpos}
            closestPointLongCache[char] = {result = res, timestamp = now, iscam = iscam, lastPosHash = posHash}
            if state.target and state.target.Character == char then
                closestPointFrameCache.char = char
                closestPointFrameCache.result = res
                closestPointFrameCache.frame = lastFrameNumber
            end
            return res
        end
    end
    local cfgdata = iscam and shared.eclipse.Combat.Camlock.ClosestPoint or shared.eclipse.Combat.Silent.ClosestPoint
    local scale = math_clamp(cfgdata.Scale or 0.10, 0, 0.95)
    local density = math_min(cfgdata.Density or 5, 7)
    local partCandidates = {}
    for i = 1, #priorityParts do
        local name = priorityParts[i]
        local part = char:FindFirstChild(name)
        if part and part:IsA('BasePart') then
            local s, on = cam:WorldToViewportPoint(part.Position)
            if on and s.Z > 0 then
                local d2 = (Vector2.new(s.X, s.Y) - mpos).Magnitude^2
                partCandidates[#partCandidates + 1] = {part = part, distSq = d2}
            end
        end
    end
    if #partCandidates > 1 then table_sort(partCandidates, function(a,b) return a.distSq < b.distSq end) end
    local maxCandidates = math_min(6, #partCandidates)
    for i = 1, maxCandidates do
        local part = partCandidates[i].part
        local size = part.Size
        local half = size * 0.5
        local cf = part.CFrame
        local shalf = half * (1 - scale)
        local current_density = density
        if part.Name:match("Leg") or part.Name:match("Foot") then current_density = math_min(9, density + 2) end
        local step = 1 / math_max(current_density - 1, 1)
        for z = 0, current_density - 1 do
            local lz = math_clamp(-half.Z + z * step * size.Z, -shalf.Z, shalf.Z)
            for y = 0, current_density - 1 do
                local ly = math_clamp(-half.Y + y * step * size.Y, -shalf.Y, shalf.Y)
                for x = 0, current_density - 1 do
                    local lx = math_clamp(-half.X + x * step * size.X, -shalf.X, shalf.X)
                    local wp = cf:PointToWorldSpace(Vector3.new(lx, ly, lz))
                    local s = cam:WorldToViewportPoint(wp)
                    if s.Z > 0 then
                        local d = (Vector2.new(s.X, s.Y) - mpos).Magnitude^2
                        if d < bdist then bdist = d best = part bpos = wp end
                    end
                end
            end
        end    end
    local res = best and {part = best, position = bpos} or (root and {part = root, position = root.Position})
    closestPointLongCache[char] = { result = res, timestamp = now, iscam = iscam, lastPosHash = posHash }
    if state.target and state.target.Character == char then
        closestPointFrameCache.char = char
        closestPointFrameCache.result = res
        closestPointFrameCache.frame = lastFrameNumber
    end
    return res
end

function eclipse:getbodypart(char)
    if not char then return nil end
    if isForceHitActive() and state.target and state.target.Character == char then
        local head = char:FindFirstChild("Head")
        if head and head:IsA('BasePart') then return {part = head, position = head.Position} end
    end
    if shared.eclipse.Combat.Silent.Hitpart == 'Closest Point' then return self:closestpoint(char, false) end
    local part = char:FindFirstChild(shared.eclipse.Combat.Silent.Hitpart)
    if part and part:IsA('BasePart') then return {part = part, position = part.Position} end
    return self:closestpointfast(char)
end

function eclipse:getcampart(char)
    if not char then return nil end
    local part = char:FindFirstChild(shared.eclipse.Combat.Camlock.Hitpart)
    if part and part:IsA('BasePart') then return {part = part, position = part.Position} end
    return self:closestpointfast(char)
end

function eclipse:besttarget()
    local closest, cdist = nil, math.huge
    local mpos = uis:GetMouseLocation()
    local campos = cam.CFrame.Position
    for _, plr in ipairs(players:GetPlayers()) do
        if plr == lp then continue end
        local char = plr.Character
        if not char then continue end
        local root = char:FindFirstChild('HumanoidRootPart')
        if not root then continue end
        local be = char:FindFirstChild('BodyEffects')
        local ko = be and be:FindFirstChild('K.O')
        local ff = char:FindFirstChildOfClass('ForceField')
        if shared.eclipse.Checks.Knock and ko and ko.Value then continue end
        if shared.eclipse.Checks.Forcefield and ff then continue end
        if shared.eclipse.Checks.Crew and self:samecrew(plr) then continue end
        if shared.eclipse.Checks.Visible and not self:visibleadvanced(campos, char) then continue end
        local sp, on = cam:WorldToViewportPoint(root.Position)
        if not on or sp.Z <= 0 then continue end
        local d = (Vector2.new(sp.X, sp.Y) - mpos).Magnitude
        if d < cdist then cdist, closest = d, plr end
    end
    return closest
end

function eclipse:cleartarget()
    if not state.target or not state.target.Parent then
        state.target, state.camtarget, state.campart, state.camlockactive = nil, nil, nil, false
        pcall(function()
            if cache.target.hitbox then cache.target.hitbox:Destroy() cache.target.hitbox = nil end
            if cache.target.box then cache.target.box:Destroy() cache.target.box = nil end
            if cache.target.trigger then cache.target.trigger:Destroy() cache.target.trigger = nil end
            if cache.target.triggerbox then cache.target.triggerbox:Destroy() cache.target.triggerbox = nil end
        end)
        return true
    end
    local char = state.target.Character
    if not char then
        if shared.eclipse.Checks.KO then
            state.target, state.camtarget, state.campart, state.camlockactive = nil, nil, nil, false
            return true
        end
        return false
    end
    local be = char:FindFirstChild('BodyEffects')
    local ko = be and be:FindFirstChild('K.O')
    local ff = char:FindFirstChildOfClass('ForceField')
    if shared.eclipse.Checks.Forcefield and ff then return false end
    if shared.eclipse.Checks.Knock and ko and ko.Value then
        state.target, state.camtarget, state.campart, state.camlockactive = nil, nil, nil, false
        return true
    end
    if shared.eclipse.Checks.Crew and self:samecrew(state.target) then
        state.target, state.camtarget, state.campart, state.camlockactive = nil, nil, nil, false
        return true
    end
    return false
end

function eclipse:in2dfov(radius)
    if not state.target or not state.target.Character then return false end
    local root = state.target.Character:FindFirstChild('HumanoidRootPart')
    if not root then return false end
    local sp, on = cam:WorldToViewportPoint(root.Position)
    if not on or sp.Z <= 0 then return false end
    return (Vector2.new(sp.X, sp.Y) - uis:GetMouseLocation()).Magnitude <= radius
end

function eclipse:insilentfov()
    if isForceHitActive() then return true end
    local fov = getWeaponSpecificFOV('Silent')
    if fov.Type == '2D' then return self:in2dfov(fov.Radius or 150) end
    if not state.target or not state.target.Character then return false end
    local root = state.target.Character:FindFirstChild('HumanoidRootPart')
    if not root then return false end
    local ut = state.target.Character:FindFirstChild('UpperTorso')
    local base = ut and ut.Position or root.Position
    local look = root.CFrame.LookVector
    local facing = CFrame.lookAt(Vector3.zero, Vector3.new(look.X, 0, look.Z))
    local sf = eclipse:splitfov('Silent')
    local size = Vector3.new(sf.xleft + sf.xright, sf.yupper + sf.ylower, sf.zleft + sf.zright)
    local off = Vector3.new((sf.xright - sf.xleft)/2, (sf.yupper - sf.ylower)/2, (sf.zright - sf.zleft)/2)
    local bcf = CFrame.new(base + facing:VectorToWorldSpace(off)) * facing
    local mpos = uis:GetMouseLocation()
    local ray = cam:ViewportPointToRay(mpos.X, mpos.Y)
    local lo = bcf:PointToObjectSpace(ray.Origin)
    local ld = bcf:VectorToObjectSpace(ray.Direction).Unit
    local h = size / 2
    local function slab(o, d, mn, mx)
        if math_abs(d) < 1e-9 then return (o < mn or o > mx) and {-math.huge, -math.huge} or {-math.huge, math.huge} end
        local t1, t2 = (mn - o) / d, (mx - o) / d
        return t1 > t2 and {t2, t1} or {t1, t2}
    end
    local tx, ty, tz = slab(lo.X, ld.X, -h.X, h.X), slab(lo.Y, ld.Y, -h.Y, h.Y), slab(lo.Z, ld.Z, -h.Z, h.Z)
    return math_min(tx[2], ty[2], tz[2]) >= math_max(tx[1], ty[1], tz[1], 0)
end

function eclipse:incamfov(pos)
    local cfgdata = shared.eclipse.Combat.Camlock.FOV
    local sp = cam:WorldToViewportPoint(pos)
    if sp.Z <= 0 then return false end
    return (Vector2.new(sp.X, sp.Y) - uis:GetMouseLocation()).Magnitude <= (tonumber_func(cfgdata.Radius) or 750)
end

function eclipse:intriggerfov2d()
    local fov = getWeaponSpecificFOV('Triggerbot')
    if not state.target or not state.target.Character then return false end
    local root = state.target.Character:FindFirstChild('HumanoidRootPart')
    if not root then return false end
    local sp, on = cam:WorldToViewportPoint(root.Position)
    if not on or sp.Z <= 0 then return false end
    local mousePos = uis:GetMouseLocation()
    return (Vector2.new(sp.X, sp.Y) - mousePos).Magnitude <= (fov.Radius or 150)
end

function eclipse:intriggerfov3d()
    local fov = getWeaponSpecificFOV('Triggerbot')
    if not state.target or not state.target.Character then return false end
    local tchar = state.target.Character
    local root = tchar:FindFirstChild('HumanoidRootPart')
    if not root then return false end
    local ut = tchar:FindFirstChild('UpperTorso')
    local base = ut and ut.Position or root.Position
    local look = root.CFrame.LookVector
    local facing = CFrame.lookAt(Vector3.zero, Vector3.new(look.X, 0, look.Z))
    local tf = eclipse:splitfov('Triggerbot')
    local size = Vector3.new(tf.xleft + tf.xright, tf.yupper + tf.ylower, tf.zleft + tf.zright)
    local off = Vector3.new((tf.xright - tf.xleft)/2, (tf.yupper - tf.ylower)/2, (tf.zright - tf.zleft)/2)
    local bcf = CFrame.new(base + facing:VectorToWorldSpace(off)) * facing
    local mpos = uis:GetMouseLocation()
    local ray = cam:ViewportPointToRay(mpos.X, mpos.Y)
    local lo = bcf:PointToObjectSpace(ray.Origin)
    local ld = bcf:VectorToObjectSpace(ray.Direction).Unit
    local h = size / 2
    local function slab(o, d, mn, mx)
        if math_abs(d) < 1e-9 then return (o < mn or o > mx) and {-math.huge, -math.huge} or {-math.huge, math.huge} end
        local t1, t2 = (mn - o) / d, (mx - o) / d
        return t1 > t2 and {t2, t1} or {t1, t2}
    end
    local tx = slab(lo.X, ld.X, -h.X, h.X)
    local ty = slab(lo.Y, ld.Y, -h.Y, h.Y)
    local tz = slab(lo.Z, ld.Z, -h.Z, h.Z)
    return math_min(tx[2], ty[2], tz[2]) >= math_max(tx[1], ty[1], tz[1], 0)
end

function eclipse:triggerhitbox()
    if not state.target or not state.target.Character then return false end
    local char = state.target.Character
    local mousePos = uis:GetMouseLocation()
    local ray = cam:ViewportPointToRay(mousePos.X, mousePos.Y)
    local rayParams = RaycastParams.new()
    rayParams.FilterType = Enum.RaycastFilterType.Include
    rayParams.FilterDescendantsInstances = {char}
    rayParams.IgnoreWater = true
    local result = workspace:Raycast(ray.Origin, ray.Direction * 4000, rayParams)
    if result and result.Instance and result.Instance:IsDescendantOf(char) then return true end
    return false
end

local function shouldTriggerCheck()
    if isForceTriggerActive() and state.target then return true end
    return false
end

function eclipse:triggerstate()
    if shouldTriggerCheck() then return true end
    local mode = shared.eclipse.Combat.Triggerbot.Mode
    if mode == 'Always' then return true end
    if mode == 'Toggle' then return state.triggeractive end
    if mode == 'Hold' then return state.triggerhold end
    return false
end

function eclipse:targetvalid()
    if not state.target then return false end
    local char = state.target.Character
    if not char then return false end
    local root = char:FindFirstChild('HumanoidRootPart')
    local hum = char:FindFirstChildOfClass('Humanoid')
    if not root or not hum or hum.Health <= 0 then return false end
    local be = char:FindFirstChild('BodyEffects')
    local ko = be and be:FindFirstChild('K.O')
    if shared.eclipse.Checks.KO and ko and ko.Value then return false end
    if shared.eclipse.Checks.Forcefield and char:FindFirstChildOfClass('ForceField') then return false end
    return true
end

function eclipse:targetvalidfortrigger()
    if not state.target then return false end
    local char = state.target.Character
    if not char then return false end
    local root = char:FindFirstChild('HumanoidRootPart')
    local hum = char:FindFirstChildOfClass('Humanoid')
    if not root or not hum or hum.Health <= 0 then return false end
    local be = char:FindFirstChild('BodyEffects')
    local ko = be and be:FindFirstChild('K.O')
    if shared.eclipse.Checks.KO and ko and ko.Value then return false end
    if shared.eclipse.Checks.Forcefield and char:FindFirstChildOfClass('ForceField') then return false end
    return true
end

function eclipse:cantrigger(part, char)
    if not shared.eclipse.Checks.Visible then return true end
    if not part then return false end
    local name = part.Name or ""
    if name == "Head" or name == "UpperTorso" or name == "LowerTorso" or name:find("Arm", 1, true) or name:find("Leg", 1, true) or name:find("Foot", 1, true) then return true end
    local dir = part.Position - cam.CFrame.Position
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = {lp.Character, char}
    params.IgnoreWater = true
    local result = workspace:Raycast(cam.CFrame.Position, dir, params)
    return result == nil
end

function eclipse:firetrigger()
    local char = lp.Character
    if not char then return end
    local tool = char:FindFirstChildOfClass('Tool')
    if not tool or tool.Name == '[Knife]' then return end
    if not tool:FindFirstChild('Handle') then return end
    local Count = RS_GetDoubleTapCount(tool.Name)
    for _ = 1, Count do task.spawn(function() tool:Activate() end) end
end

function eclipse:antifall()
    if not shared.eclipse.Misc.AntiFall then return end
    local char = lp.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass('Humanoid')
    if not hum then return end
    local st = hum:GetState()
    if st == Enum.HumanoidStateType.FallingDown or st == Enum.HumanoidStateType.Ragdoll or st == Enum.HumanoidStateType.PlatformStanding then
        hum:ChangeState(Enum.HumanoidStateType.GettingUp)
    end
end

local headlessConnection = nil
local function applyHeadless()
    if not shared.eclipse.Misc.Headless then
        if headlessConnection then headlessConnection:Disconnect() headlessConnection = nil end
        local char = lp.Character
        if char then
            local head = char:FindFirstChild("Head")
            if head then head.Transparency = 0 end
        end
        return
    end
    local char = lp.Character
    if not char then return end
    local head = char:FindFirstChild("Head")
    if head then
        head.Transparency = 1
        for _, child in ipairs(head:GetChildren()) do
            if child:IsA("Accessory") or child:IsA("Hat") then child:Destroy() end
        end
    end
    if not headlessConnection then
        headlessConnection = char.ChildAdded:Connect(function(child)
            if child.Name == "Head" and shared.eclipse.Misc.Headless then
                task.wait()
                child.Transparency = 1
            end
        end)
    end
end

local function setupHeadless()
    applyHeadless()
    lp.CharacterAdded:Connect(function()
        task.wait(0.1)
        applyHeadless()
    end)
end

function eclipse:touchingwall()
    local char = lp.Character
    if not char then return false end
    local hrp = char:FindFirstChild('HumanoidRootPart')
    if not hrp then return false end
    local params = RaycastParams.new()
    params.FilterDescendantsInstances = {char}
    params.FilterType = Enum.RaycastFilterType.Exclude
    for _, d in ipairs({hrp.CFrame.LookVector, -hrp.CFrame.LookVector, hrp.CFrame.RightVector, -hrp.CFrame.RightVector}) do
        if workspace:Raycast(hrp.Position, d * 2.5, params) then return true end
    end
    return false
end

function eclipse:jumppower()
    local char = lp.Character
    if char and char:FindFirstChildOfClass('Tool') and char:FindFirstChildOfClass('Tool').Name == '[Knife]' then
        return shared.eclipse.Movement.Spiderman.KnifeJumpPower
    end
    return shared.eclipse.Movement.Spiderman.JumpPower
end

function eclipse:setupwalljump()
    if state.walljumpconn then state.walljumpconn:Disconnect() end
    state.walljumped = false
    local char = lp.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass('Humanoid')
    if not hum then task.wait(0.5) hum = char:FindFirstChildOfClass('Humanoid') end
    if not hum then return end
    state.walljumpconn = hum.StateChanged:Connect(function(_, new)
        if new == Enum.HumanoidStateType.Landed or new == Enum.HumanoidStateType.Running or new == Enum.HumanoidStateType.Jumping then
            state.walljumped = false
        end
    end)
end

function eclipse:applyspeed()
    local cfgdata = shared.eclipse.Movement.Speed
    if not cfgdata or not cfgdata.Enabled or not state.speedactive then return end
    local hum = lp.Character and lp.Character:FindFirstChildOfClass('Humanoid')
    if not hum then return end
    local speed = 16
    if cfgdata.LowHealth and hum.Health <= cfgdata.LowHealth.Threshold then
        speed = speed * cfgdata.LowHealth.Multiplier
    else
        speed = speed * cfgdata.Normal
    end
    hum.WalkSpeed = speed
end

function eclipse:resetspeed()
    local hum = lp.Character and lp.Character:FindFirstChildOfClass('Humanoid')
    if hum then hum.WalkSpeed = 16 end
end

function eclipse:hookhumanoid(hum)
    hum:GetPropertyChangedSignal('WalkSpeed'):Connect(function()
        if shared.eclipse.Movement.Speed.Enabled and state.speedactive then self:applyspeed() end
    end)
    hum.HealthChanged:Connect(function()
        if state.speedactive then self:applyspeed() end
    end)
end

function eclipse:setupchar(char)
    if not char then return end
    state.walljumped = false
    local hum = char:WaitForChild('Humanoid', 10)
    if hum then
        self:hookhumanoid(hum)
        self:setupwalljump()
    end
end

-- Spiderman apply
function eclipse:applyspiderman()
    local cfgdata = shared.eclipse.Movement.Spiderman
    if not cfgdata or not cfgdata.Enabled or not state.spidermanactive then return end
    local char = lp.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass('Humanoid')
    if not hum then return end
    local jp = cfgdata.JumpPower or 120
    local tool = char:FindFirstChildOfClass('Tool')
    if tool and tool.Name == '[Knife]' then jp = cfgdata.KnifeJumpPower or 130 end
    hum.JumpPower = jp
    hum.UseJumpPower = true
end

function eclipse:resetspiderman()
    local char = lp.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass('Humanoid')
    if hum then
        hum.UseJumpPower = false
    end
end

-- ESP
function eclipse:removeesp(plr)
    local Draw = NameESPDrawings[plr]
    if Draw then pcall(function() Draw:Remove() end) NameESPDrawings[plr] = nil end
    local Set = HealthBarDrawings[plr]
    if Set then RemoveHealthBarSet(Set) HealthBarDrawings[plr] = nil end
    HealthBarValueCache[plr] = nil
    cache.esp[plr] = nil
    cache.player[plr] = nil
end

function eclipse:cleanupAllESP()
    for plr in next, NameESPDrawings do pcall(function() NameESPDrawings[plr]:Remove() end) NameESPDrawings[plr] = nil end
    for plr in next, HealthBarDrawings do RemoveHealthBarSet(HealthBarDrawings[plr]) HealthBarDrawings[plr] = nil end
    for plr in next, HealthBarValueCache do HealthBarValueCache[plr] = nil end
    cache.esp = {}
    cache.player = {}
end

function eclipse:updateesp()
    local cfgdata = shared.eclipse.Visuals.ESP
    if not cfgdata.Enabled then
        for _, Draw in next, NameESPDrawings do Draw.Visible = false end
        for _, Set in next, HealthBarDrawings do HideHealthBarSet(Set) end
        return
    end
    local currentPlayers = {}
    for _, plr in ipairs(players:GetPlayers()) do if plr ~= lp then currentPlayers[plr] = true end end
    for plr in next, NameESPDrawings do if not currentPlayers[plr] then eclipse:removeesp(plr) end end
    for plr in next, HealthBarDrawings do
        if not currentPlayers[plr] then
            local Set = HealthBarDrawings[plr]
            RemoveHealthBarSet(Set)
            HealthBarDrawings[plr] = nil
            HealthBarValueCache[plr] = nil
        end
    end
    local FORCED_FONT = Enum.Font.SourceSansBold
    local camPos = cam.CFrame.Position
    for _, plr in ipairs(players:GetPlayers()) do
        if plr == lp then continue end
        local char = plr.Character
        if not char then
            if NameESPDrawings[plr] then NameESPDrawings[plr].Visible = false end
            local Set = HealthBarDrawings[plr]
            if Set then HideHealthBarSet(Set) end
            continue
        end
        local root = char:FindFirstChild('HumanoidRootPart')
        local head = char:FindFirstChild('Head')
        local hum = char:FindFirstChildOfClass('Humanoid')
        if not root or not head or not hum or hum.Health <= 0 then
            if NameESPDrawings[plr] then NameESPDrawings[plr].Visible = false end
            local Set = HealthBarDrawings[plr]
            if Set then HideHealthBarSet(Set) end
            continue
        end
        local isAnyTarget = (plr == state.target)
            or (SilentTarget == plr)
            or (state.camtarget == plr)
        local color = isAnyTarget and TARGET_RED or CLOVER_GREEN
        local rp, on = cam:WorldToViewportPoint(root.Position)
        if not on or rp.Z <= 0 then
            if NameESPDrawings[plr] then NameESPDrawings[plr].Visible = false end
            local Set = HealthBarDrawings[plr]
            if Set then HideHealthBarSet(Set) end
            continue
        end
        local headPos = cam:WorldToViewportPoint(head.Position)
        local footPos = cam:WorldToViewportPoint(root.Position - Vector3.new(0, 2.5, 0))
        if not NameESPDrawings[plr] then
            local Draw = CreateTextLabel()
            Draw.Outline = true
            Draw.Center = true
            Draw.Font = FORCED_FONT
            NameESPDrawings[plr] = Draw
        end
        local nameText = NameESPDrawings[plr]
        if cfgdata.Name then
            nameText.Visible = true
            nameText.Text = plr.DisplayName
            nameText.Size = cfgdata.FontSize
            nameText.Color = color
            nameText.Position = Vector2.new(math.floor(rp.X + 0.5), math.floor(headPos.Y - cfgdata.FontSize - 4 + 0.5))
        else
            nameText.Visible = false
        end
        local HBCfg = shared.eclipse.Visuals.HealthBar
        if HBCfg and HBCfg.Enabled then
            if not HealthBarDrawings[plr] then
                local Set = {}
                for _, Key in next, {'HealthBack', 'HealthFill', 'ArmorBack', 'ArmorFill'} do
                    local Sq = CreateSquare()
                    Sq.Filled = true
                    Sq.Visible = false
                    Set[Key] = Sq
                end
                HealthBarDrawings[plr] = Set
            end
            local Set = HealthBarDrawings[plr]
            local HealthValue, MaxHealth, ArmorVal, IsDead = GetStableHealthBarValues(plr, hum)
            local HealthFrac = math.clamp(HealthValue / MaxHealth, 0, 1)
            local ArmorFrac = math.clamp(ArmorVal / 100, 0, 1)
            local DrawArmor = HBCfg.ShowArmor ~= false and ArmorVal > 0
            Set.HealthBack.Color = Color3.fromRGB(8, 8, 12)
            Set.HealthFill.Color = isAnyTarget and TARGET_RED or (HBCfg.HealthColor or CLOVER_GREEN)
            Set.ArmorBack.Color = Color3.fromRGB(8, 8, 12)
            Set.ArmorFill.Color = isAnyTarget and TARGET_RED or (HBCfg.ArmorColor or CLOVER_BRIGHT)
            local BarLen = 60
            local TrackHeight = 2
            local Border = 1
            local Gap = 1
            local TrackWidth = BarLen + Border * 2
            local TrackX = math.floor(rp.X - TrackWidth / 2 + 0.5)
            local FeetY = math.max(headPos.Y, footPos.Y)
            local TrackY = math.floor(FeetY + 3 + 0.5)
            local HealthBackY = TrackY
            local HealthFillY = HealthBackY + Border
            local ArmorBackY = HealthBackY + TrackHeight + Border * 2 + Gap
            local ArmorFillY = ArmorBackY + Border
            Set.HealthBack.Size = Vector2.new(TrackWidth, TrackHeight + Border * 2)
            Set.HealthBack.Position = Vector2.new(TrackX, HealthBackY)
            Set.HealthFill.Size = Vector2.new(math.floor(BarLen * HealthFrac + 0.5), TrackHeight)
            Set.HealthFill.Position = Vector2.new(TrackX + Border, HealthFillY)
            Set.ArmorBack.Size = Vector2.new(TrackWidth, TrackHeight + Border * 2)
            Set.ArmorBack.Position = Vector2.new(TrackX, ArmorBackY)
            Set.ArmorFill.Size = Vector2.new(math.floor(BarLen * ArmorFrac + 0.5), TrackHeight)
            Set.ArmorFill.Position = Vector2.new(TrackX + Border, ArmorFillY)
            local ShowHealth = HealthFrac > 0 and not IsDead
            Set.HealthBack.Visible = ShowHealth
            Set.HealthFill.Visible = ShowHealth
            Set.ArmorBack.Visible = DrawArmor and not IsDead
            Set.ArmorFill.Visible = DrawArmor and ArmorFrac > 0 and not IsDead
        else
            if HealthBarDrawings[plr] then HideHealthBarSet(HealthBarDrawings[plr]) end
        end
    end
end

runservice.RenderStepped:Connect(function()
    local expander = shared.eclipse["Combat Enhancements"]["Hitbox Expander"]
    for _, plr in players:GetPlayers() do
        if plr == lp then continue end
        local char = plr.Character
        if not char then
            if cache.defaulthrp[plr] then cache.defaulthrp[plr] = nil end
            continue
        end
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then
            if cache.defaulthrp[plr] then cache.defaulthrp[plr] = nil end
            continue
        end
        local hum = char:FindFirstChildOfClass("Humanoid")
        local be = char:FindFirstChild("BodyEffects")
        local ko = be and be:FindFirstChild("K.O")
        local isDead = not hum or hum.Health <= 0 or (ko and ko.Value == true)
        if isDead then
            if cache.defaulthrp[plr] then
                hrp.Size = cache.defaulthrp[plr]
                hrp.Transparency = 1
                hrp.CanCollide = true
                cache.defaulthrp[plr] = nil
            end
            local visual = hrp:FindFirstChild("HitboxVisual")
            if visual then visual:Destroy() end
            continue
        end
        if not cache.defaulthrp[plr] then cache.defaulthrp[plr] = hrp.Size end
        local original = cache.defaulthrp[plr]
        if not expander.Enabled then
            hrp.Size = original
            hrp.Transparency = 1
            hrp.CanCollide = true
            local visual = hrp:FindFirstChild("HitboxVisual")
            if visual then visual:Destroy() end
            continue
        end
        local multipliers = getWeaponHitboxMultipliers()
        local visualPart = hrp:FindFirstChild("HitboxVisual")
        local mx = tonumber_func(multipliers.X) or 1
        local my = tonumber_func(multipliers.Y) or 1
        local mz = tonumber_func(multipliers.Z) or 1
        local newSize = Vector3.new(original.X * mx, original.Y * my, original.Z * mz)
        hrp.Size = newSize
        hrp.Transparency = 1
        hrp.CanCollide = false
        if expander.ShowHitbox then
            local displaySize = newSize
            if mx <= 1.01 and my <= 1.01 and mz <= 1.01 then displaySize = original end
            if not visualPart then
                visualPart = Instance.new("Part")
                visualPart.Name = "HitboxVisual"
                visualPart.Anchored = true
                visualPart.CanCollide = false
                visualPart.CanQuery = false
                visualPart.Material = Enum.Material.Neon
                visualPart.Color = CLOVER_GREEN
                visualPart.Transparency = 0.85
                visualPart.Parent = hrp
            end
            visualPart.Size = displaySize
            visualPart.CFrame = hrp.CFrame
        else
            if visualPart then visualPart:Destroy() end
        end
    end
end)

local function onCharacterAdded(plr)
    if plr == lp then return end
    cache.defaulthrp[plr] = nil
    plr.CharacterAdded:Connect(function(char)
        cache.defaulthrp[plr] = nil
        task.wait(0.1)
        local hrp = char:FindFirstChild("HumanoidRootPart")
        if hrp then
            local visual = hrp:FindFirstChild("HitboxVisual")
            if visual then visual:Destroy() end
            hrp.Size = Vector3.new(2, 1.25, 1)
            hrp.Transparency = 1
            hrp.CanCollide = true
        end
    end)
end

for _, plr in pairs(players:GetPlayers()) do if plr ~= lp then onCharacterAdded(plr) end end
players.PlayerAdded:Connect(function(plr) if plr ~= lp then onCharacterAdded(plr) end end)
players.PlayerRemoving:Connect(function(plr) eclipse:removeesp(plr) cache.defaulthrp[plr] = nil end)

local function onCharacterRemoving(plr)
    eclipse:removeesp(plr)
    cache.defaulthrp[plr] = nil
end

for _, plr in players:GetPlayers() do
    if plr ~= lp then
        plr.CharacterRemoving:Connect(function() onCharacterRemoving(plr) end)
        plr.CharacterAdded:Connect(function(char)
            local hum = char:WaitForChild("Humanoid")
            hum.Died:Connect(function()
                local hrp = char:FindFirstChild("HumanoidRootPart")
                if hrp then
                    local visual = hrp:FindFirstChild("HitboxVisual")
                    if visual then visual:Destroy() end
                    if cache.defaulthrp[plr] then
                        hrp.Size = cache.defaulthrp[plr]
                        hrp.Transparency = 1
                        hrp.CanCollide = true
                    end
                    cache.defaulthrp[plr] = nil
                end
            end)
        end)
    end
end

task.spawn(function()
    while task.wait(0.1) do
        if shared.eclipse.Targeting.Mode == 'Automatic' then
            local best = eclipse:besttarget()
            if best ~= state.target then state.target = best state.currenttarget = nil end
        end
    end
end)

task.spawn(function()
    local moozeWeapons = { ["[Double-Barrel SG]"] = true, ["[Revolver]"] = true, ["[TacticalShotgun]"] = true }
    local function moozeHasLOS(targetPos)
        local ignoreList = { state.target.Character, lp.Character, cam }
        return #cam:GetPartsObscuringTarget({ lp.Character.Head.Position, targetPos }, ignoreList) == 0
    end
    while true do
        local cfg = shared.eclipse.Combat.Triggerbot
        local shouldTrigger = false
        if cfg.Enabled and not state.ctrlheld and state.target and eclipse:targetvalidfortrigger() then
            if eclipse:triggerstate() then
                if eclipse:distancetotarget() <= eclipse:triggerdist() then
                    local tool = lp.Character and lp.Character:FindFirstChildOfClass("Tool")
                    local weaponOK = tool and moozeWeapons[tool.Name] == true
                    if weaponOK then
                        local losOK = false
                        if state.target and state.target.Character then
                            local head = state.target.Character:FindFirstChild("Head")
                            if head then losOK = moozeHasLOS(head.Position) end
                        end
                        if losOK then
                            local tchar = state.target.Character
                            local closest = eclipse:getbodypart(tchar)
                            local hitpart = closest and closest.part
                            if hitpart and eclipse:cantrigger(hitpart, tchar) then shouldTrigger = true end
                        end
                    end
                end
            end
        end
        if shouldTrigger then eclipse:firetrigger() end
        if cfg.Mode == "Toggle" and state.triggeractive and not eclipse:targetvalidfortrigger() then state.triggeractive = false end
        local dly = cfg.Delay.Enabled and cfg.Delay.Amount or 0
        if dly > 0 then task.wait(dly) else task.wait(0.016) end
    end
end)

task.spawn(function() while task.wait(0.48) do if state.speedactive then eclipse:applyspeed() end end end)
task.spawn(function() while task.wait(1) do if lp.Character then local hum = lp.Character:FindFirstChildOfClass('Humanoid') if hum and not state.walljumpconn then eclipse:setupwalljump() end end end end)
task.spawn(function() while true do task.wait(6) local now = tick_func() for char, data in pairs(closestPointLongCache) do if (now - data.timestamp) > 2 then closestPointLongCache[char] = nil end end end end)

-- Spiderman loop
task.spawn(function()
    while true do
        task.wait(0.2)
        if state.spidermanactive then eclipse:applyspiderman() end
    end
end)

lp.CharacterRemoving:Connect(function() resetAllToggles() end)
lp.CharacterAdded:Connect(function(c)
    eclipse:setupchar(c)
    task.spawn(function() task.wait(0.15) resetAllToggles() end)
end)

if lp.Character then eclipse:setupchar(lp.Character) end

-- ============================================================
-- Master keybind handler
-- ============================================================
uis.InputBegan:Connect(function(input, gp)
    if gp then return end
    local key = input.KeyCode

    -- PANIC toggle/hold
    local panicCfg = shared.eclipse.Panic
    if panicCfg and panicCfg.Enabled then
        local pk = Enum.KeyCode[(panicCfg.Keybind or 'L'):upper()]
        if pk and key == pk then
            if panicCfg.KeyMode == 'Hold' then
                Panic:Apply()
            else
                Panic:Toggle()
            end
            return
        end
    end

    -- TARGETING mode toggle/hold
    local tgtCfg = shared.eclipse.Targeting
    if tgtCfg and tgtCfg.Keybind then
        local tk = Enum.KeyCode[(tgtCfg.Keybind or 'C'):upper()]
        if tk and key == tk then
            if tgtCfg.KeyMode == 'Hold' then
                state.targetingKeyHeld = true
                state.selectpressed = true
                state.target = eclipse:besttarget()
            elseif not state.selectpressed then
                state.selectpressed = true
                if state.target then
                    state.target = nil
                    pcall(function()
                        if cache.target.hitbox then cache.target.hitbox:Destroy() end
                        if cache.target.box then cache.target.box:Destroy() end
                        if cache.target.trigger then cache.target.trigger:Destroy() end
                        if cache.target.triggerbox then cache.target.triggerbox:Destroy() end
                    end)
                else state.target = eclipse:besttarget() end
                state.selectpressed = false
            end
            return
        end
    end

    local binds = shared.eclipse.Binds
    if key == Enum.KeyCode.LeftControl then state.ctrlheld = true return end
    if key == Enum.KeyCode[binds.CameraAimbot] and not state.campressed then
        state.campressed = true
        local mode = shared.eclipse.Combat.Camlock.Mode
        if mode == 'Toggle' then
            state.camlockactive = not state.camlockactive
            if state.camlockactive then
                state.camtarget = state.target
                if state.camtarget and state.camtarget.Character then state.campart = eclipse:getcampart(state.camtarget.Character) end
            else state.camtarget, state.campart = nil, nil end
        elseif mode == 'Hold' then
            state.camlockhold, state.camlockactive = true, true
            state.camtarget = state.target
            if state.camtarget and state.camtarget.Character then state.campart = eclipse:getcampart(state.camtarget.Character) end
        end
    end
    if key == Enum.KeyCode[binds.Triggerbot] and not state.triggerpressed then
        state.triggerpressed = true
        local mode = shared.eclipse.Combat.Triggerbot.Mode
        if mode == 'Toggle' then
            if shared.eclipse.Combat.Triggerbot.Enabled then state.triggeractive = not state.triggeractive end
        elseif mode == 'Hold' then state.triggerhold = true end
    end
    if key == Enum.KeyCode[binds.Speed] and not state.speedpressed then
        state.speedpressed = true
        state.speedactive = not state.speedactive
        if state.speedactive then eclipse:applyspeed() else eclipse:resetspeed() end
    end
    if key == Enum.KeyCode[binds.ESP] and not state.esppressed then
        state.esppressed = true
        shared.eclipse.Visuals.ESP.Enabled = not shared.eclipse.Visuals.ESP.Enabled
        if not shared.eclipse.Visuals.ESP.Enabled then eclipse:cleanupAllESP() end
    end
    -- Spiderman key
    local spCfg = shared.eclipse.Movement.Spiderman
    if spCfg and spCfg.Keybind then
        local sk = Enum.KeyCode[(spCfg.Keybind or 'B'):upper()]
        if sk and key == sk then
            if spCfg.KeyMode == 'Hold' then
                state.spidermanactive = true
            else
                state.spidermanactive = not state.spidermanactive
                if state.spidermanactive then eclipse:applyspiderman() else eclipse:resetspiderman() end
            end
            print('[spiderman]', state.spidermanactive and 'on' or 'off')
        end
    end
    if key == Enum.KeyCode.Space and spCfg and spCfg.Enabled and spCfg.WallJump and state.spidermanactive then
        local char = lp.Character
        if char then
            local hum, hrp = char:FindFirstChild('Humanoid'), char:FindFirstChild('HumanoidRootPart')
            if hum and hrp and hum:GetState() == Enum.HumanoidStateType.Freefall and eclipse:touchingwall() and not state.walljumped then
                state.walljumped = true
                hrp.AssemblyLinearVelocity = Vector3.new(hrp.AssemblyLinearVelocity.X, eclipse:jumppower(), hrp.AssemblyLinearVelocity.Z)
            end
        end
    end
    if input.UserInputType == Enum.UserInputType.MouseButton2 then state.rightclick = true end
end)

uis.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftControl then state.ctrlheld = false end
    if input.UserInputType == Enum.UserInputType.MouseButton2 then state.rightclick = false end

    -- Panic hold release
    local panicCfg = shared.eclipse.Panic
    if panicCfg and panicCfg.Enabled and panicCfg.KeyMode == 'Hold' then
        local pk = Enum.KeyCode[(panicCfg.Keybind or 'L'):upper()]
        if pk and input.KeyCode == pk then Panic:Release() return end
    end

    -- Targeting hold release
    local tgtCfg = shared.eclipse.Targeting
    if tgtCfg and tgtCfg.KeyMode == 'Hold' and tgtCfg.Keybind then
        local tk = Enum.KeyCode[(tgtCfg.Keybind or 'C'):upper()]
        if tk and input.KeyCode == tk then
            state.targetingKeyHeld = false
            state.selectpressed = false
            return
        end
    end

    -- Spiderman hold release
    local spCfg = shared.eclipse.Movement.Spiderman
    if spCfg and spCfg.KeyMode == 'Hold' and spCfg.Keybind then
        local sk = Enum.KeyCode[(spCfg.Keybind or 'B'):upper()]
        if sk and input.KeyCode == sk then
            state.spidermanactive = false
            eclipse:resetspiderman()
            return
        end
    end

    local binds = shared.eclipse.Binds
    if input.KeyCode == Enum.KeyCode[binds.CameraAimbot] then
        state.campressed = false
        if shared.eclipse.Combat.Camlock.Mode == 'Hold' then state.camlockhold, state.camlockactive, state.camtarget, state.campart = false, false, nil, nil end
    end
    if input.KeyCode == Enum.KeyCode[binds.Triggerbot] then
        state.triggerpressed = false
        if shared.eclipse.Combat.Triggerbot.Mode == 'Hold' then state.triggerhold = false end
    end
    if input.KeyCode == Enum.KeyCode[binds.Speed] then state.speedpressed = false end
    if input.KeyCode == Enum.KeyCode[binds.ESP] then state.esppressed = false end
end)

task.spawn(function()
    while bgRunning do
        task.wait(0.01)
        if shared.eclipse.Combat.Silent.Enabled and silentEnabled then
            local best = GetClosestPlayerForSilent()
            if best then bgTarget = best bgTargetTime = tick_func() end
        end
    end
end)

runservice.RenderStepped:Connect(function(dt)
    lastFrameNumber = lastFrameNumber + 1
    eclipse:antifall()
    applyHeadless()
    eclipse:updateesp()
    UpdateWatermark()
    if shared.eclipse.Combat.Silent.Enabled and silentEnabled then
        SilentTarget = GetClosestPlayerForSilentOptimized()
        IsSilentAiming = SilentTarget ~= nil
    else
        SilentTarget = nil
        IsSilentAiming = false
    end
    local silentcfg = getWeaponSpecificFOV('Silent')
    local triggercfg = getWeaponSpecificFOV('Triggerbot')
    local camcfg = shared.eclipse.Combat.Camlock.FOV
    local mpos = uis:GetMouseLocation()
    if Panic and Panic.Active and shared.eclipse.Panic.DisableFOV then
        if cache.fov.silent2d then cache.fov.silent2d.Visible = false end
        if cache.fov.trigger2d then cache.fov.trigger2d.Visible = false end
        if cache.fov.cam2d then cache.fov.cam2d.Visible = false end
        return
    end
    if silentcfg.Show and silentcfg.Type == '2D' then
        if not cache.fov.silent2d then
            cache.fov.silent2d = Drawing.new('Circle')
            cache.fov.silent2d.Thickness = 1.5
            cache.fov.silent2d.Filled = false
            cache.fov.silent2d.Transparency = 1
            cache.fov.silent2d.Color = CLOVER_GREEN
        end
        cache.fov.silent2d.Position = Vector2.new(mpos.X, mpos.Y)
        cache.fov.silent2d.Radius = silentcfg.Radius or 150
        cache.fov.silent2d.Visible = true
        if SilentTarget then cache.fov.silent2d.Color = TARGET_RED else cache.fov.silent2d.Color = CLOVER_GREEN end
    elseif cache.fov.silent2d then cache.fov.silent2d.Visible = false end
    if triggercfg.Show and triggercfg.Type == '2D' then
        if not cache.fov.trigger2d then
            cache.fov.trigger2d = Drawing.new('Circle')
            cache.fov.trigger2d.Thickness = 1.5
            cache.fov.trigger2d.Filled = false
            cache.fov.trigger2d.Transparency = 1
            cache.fov.trigger2d.Color = CLOVER_GREEN
        end
        cache.fov.trigger2d.Position = Vector2.new(mpos.X, mpos.Y)
        cache.fov.trigger2d.Radius = triggercfg.Radius or 150
        cache.fov.trigger2d.Visible = true
    elseif cache.fov.trigger2d then
        cache.fov.trigger2d:Remove()
        cache.fov.trigger2d = nil
    end
    if camcfg.Show and camcfg.Type == '2D' then
        if not cache.fov.cam2d then
            cache.fov.cam2d = Drawing.new('Circle')
            cache.fov.cam2d.Thickness = 1.5
            cache.fov.cam2d.Filled = false
            cache.fov.cam2d.Transparency = 1
            cache.fov.cam2d.Color = CLOVER_GREEN
        end
        cache.fov.cam2d.Position = Vector2.new(mpos.X, mpos.Y)
        cache.fov.cam2d.Radius = tonumber_func(camcfg.Radius) or 750
        cache.fov.cam2d.Visible = true
    elseif cache.fov.cam2d then
        cache.fov.cam2d:Remove()
        cache.fov.cam2d = nil
    end
    if eclipse:cleartarget() then state.currenttarget = nil return end
    if eclipse:targetpaused() then return end
    if state.target ~= state.currenttarget then
        state.currenttarget = state.target
        pcall(function()
            if cache.target.hitbox then cache.target.hitbox:Destroy() cache.target.hitbox = nil end
            if cache.target.box then cache.target.box:Destroy() cache.target.box = nil end
            if cache.target.trigger then cache.target.trigger:Destroy() cache.target.trigger = nil end
            if cache.target.triggerbox then cache.target.triggerbox:Destroy() cache.target.triggerbox = nil end
        end)
    end
    if not state.target or not state.target.Character then return end
    local root = state.target.Character:FindFirstChild('HumanoidRootPart')
    if not root then return end
    local ut = state.target.Character:FindFirstChild('UpperTorso')
    local base = ut and ut.Position or root.Position
    local look = root.CFrame.LookVector
    local facing = CFrame.lookAt(Vector3.zero, Vector3.new(look.X, 0, look.Z))
    if silentcfg.Show and silentcfg.Type == '3D' then
        local sf = eclipse:splitfov('Silent')
        if not cache.target.hitbox then
            cache.target.hitbox = Instance.new('Part')
            cache.target.hitbox.Anchored = true
            cache.target.hitbox.CanCollide = false
            cache.target.hitbox.Transparency = 1
            cache.target.hitbox.CanQuery = false
            cache.target.hitbox.Parent = workspace
        end
        local size = Vector3.new(sf.xleft + sf.xright, sf.yupper + sf.ylower, sf.zleft + sf.zright)
        local off = Vector3.new((sf.xright - sf.xleft)/2, (sf.yupper - sf.ylower)/2, (sf.zright - sf.zleft)/2)
        cache.target.hitbox.Size = size
        cache.target.hitbox.CFrame = CFrame.new(base + facing:VectorToWorldSpace(off)) * facing
        if not cache.target.box then
            cache.target.box = Instance.new('BoxHandleAdornment')
            cache.target.box.Adornee = cache.target.hitbox
            cache.target.box.AlwaysOnTop = true
            cache.target.box.ZIndex = 10
            cache.target.box.Transparency = 0.7
            cache.target.box.Parent = cache.target.hitbox
        end
        cache.target.box.Size = size
        cache.target.box.Color3 = CLOVER_GREEN
    else
        if cache.target.hitbox then cache.target.hitbox:Destroy() cache.target.hitbox = nil end
        if cache.target.box then cache.target.box:Destroy() cache.target.box = nil end
    end
    if triggercfg.Show and triggercfg.Type == '3D' then
        local tf = eclipse:splitfov('Triggerbot')
        if not cache.target.trigger then
            cache.target.trigger = Instance.new('Part')
            cache.target.trigger.Anchored = true
            cache.target.trigger.CanCollide = false
            cache.target.trigger.Transparency = 1
            cache.target.trigger.CanQuery = false
            cache.target.trigger.Parent = workspace
        end
        local size = Vector3.new(tf.xleft + tf.xright, tf.yupper + tf.ylower, tf.zleft + tf.zright)
        local off = Vector3.new((tf.xright - tf.xleft)/2, (tf.yupper - tf.ylower)/2, (tf.zright - tf.zleft)/2)
        cache.target.trigger.Size = size
        cache.target.trigger.CFrame = CFrame.new(base + facing:VectorToWorldSpace(off)) * facing
        if not cache.target.triggerbox then
            cache.target.triggerbox = Instance.new('BoxHandleAdornment')
            cache.target.triggerbox.Adornee = cache.target.trigger
            cache.target.triggerbox.AlwaysOnTop = true
            cache.target.triggerbox.ZIndex = 10
            cache.target.triggerbox.Transparency = 0.7
            cache.target.triggerbox.Parent = cache.target.trigger
        end
        cache.target.triggerbox.Size = size
        cache.target.triggerbox.Color3 = CLOVER_GREEN
    else
        if cache.target.trigger then cache.target.trigger:Destroy() cache.target.trigger = nil end
        if cache.target.triggerbox then cache.target.triggerbox:Destroy() cache.target.triggerbox = nil end
    end
    local camcfg2 = shared.eclipse.Combat.Camlock
    if camcfg2.Enabled and state.camlockactive and state.camtarget and state.camtarget.Character then
        local isfp, istp = eclipse:getperspective()
        if not (isfp and not camcfg2.Perspective.FirstPerson) and not (istp and not camcfg2.Perspective.ThirdPerson) then
            if not eclipse:cleartarget() and not eclipse:targetpaused() then
                local root2 = state.camtarget.Character:FindFirstChild('HumanoidRootPart')
                if root2 and not (shared.eclipse.Checks.SelfKnock and eclipse:selfknocked()) then
                    local newpart = eclipse:getcampart(state.camtarget.Character)
                    if newpart and eclipse:incamfov(newpart.position) and eclipse:visible(cam.CFrame.Position, newpart.part, state.camtarget.Character) then
                        state.campart = newpart
                        local targetpos = state.campart.position
                        local troot = state.camtarget.Character:FindFirstChild('HumanoidRootPart')
                        if troot then
                            local vel = troot.AssemblyLinearVelocity
                            local pred = camcfg2.Prediction
                            targetpos = targetpos + Vector3.new(vel.X * pred.X, vel.Y * pred.Y, vel.Z * pred.Z)
                        end
                        local smooth = camcfg2.Smoothing
                        local alpha = math_clamp(smooth.X * dt * 60, 0, 1)
                        cam.CFrame = cam.CFrame:Lerp(CFrame.new(cam.CFrame.Position, targetpos), alpha)
                    end
                end
            end
        end
    end
end)

local oldrandom
oldrandom = hookfunction(math.random, function(...)
    local args = {...}
    if checkcaller() then return oldrandom(...) end
    if not debug.traceback():find('GunClientShotgun') then return oldrandom(...) end
    local sm = shared.eclipse["Combat Enhancements"]["Spread"]
    if not sm or not sm.Enabled then return oldrandom(...) end
    local shotgun = eclipse:getshotgun()
    local mapped = shotgun and weaponmap[shotgun]
    if not mapped or not sm.Weapons or not sm.Weapons[mapped] then return oldrandom(...) end
    local isspread = false
    if #args == 0 then isspread = true
    elseif #args == 2 and type(args[1]) == 'number' and type(args[2]) == 'number' then
        local a, b = args[1], args[2]
        if (a == -0.1 and b == 0.05) or (a >= -0.15 and a <= -0.05 and b >= 0.03 and b <= 0.07) then isspread = true end
    elseif #args == 1 and type(args[1]) == 'number' then
        local a = args[1]
        if a == -0.1 or a == -0.05 or (a >= -0.15 and a <= -0.03) then isspread = true end
    end
    if not isspread then return oldrandom(...) end
    local wcfg = sm.Weapons[mapped]
    local mult = 1
    if sm.Mode == 'Randomized' and wcfg.Min and wcfg.Max then
        local mn, mx = math_clamp(tonumber_func(wcfg.Min) or 0, 0, 1), math_clamp(tonumber_func(wcfg.Max) or 1, 0, 1)
        if mn > mx then mn, mx = mx, mn end
        mult = mn + oldrandom() * (mx - mn)
    else
        mult = math_clamp(tonumber_func(wcfg.Fixed) or 1, 0, 1)
    end
    return oldrandom(...) * mult
end)

task.spawn(function()
    task.wait(0.5)
    pcall(SetupSilentAim)
    pcall(setupHeadless)
    pcall(InitSkinChanger)
end)

local function unloadEclipse()
    bgRunning = false
    if state.walljumpconn then state.walljumpconn:Disconnect() end
    if headlessConnection then headlessConnection:Disconnect() end
    eclipse:cleanupAllESP()
    for plr in next, NameESPDrawings do pcall(function() NameESPDrawings[plr]:Remove() end) end
    for plr in next, HealthBarDrawings do RemoveHealthBarSet(HealthBarDrawings[plr]) end
    NameESPDrawings = {}
    HealthBarDrawings = {}
    HealthBarValueCache = {}
    if UtilityUI and UtilityUI.Parent then pcall(function() UtilityUI:Destroy() end) end
    for _, d in pairs(cache.fov) do if d and d.Remove then pcall(function() d:Remove() end) end end
    cache.fov = {}
    for _, lbl in ipairs(watermarkLabels) do if lbl and lbl.Remove then pcall(function() lbl:Remove() end) end end
    if OriginalGetAim then
        local gh = FindGunHandler()
        if gh then
            local ok, handler = pcall(require, gh)
            if ok and handler then
                if type(handler.GetAim) == "function" then handler.GetAim = OriginalGetAim
                elseif type(handler.getAim) == "function" then handler.getAim = OriginalGetAim end
            end
        end
    end
    if oldrandom and hookfunction then hookfunction(math.random, oldrandom) end
    for Tool in next, SkinChanger.AppliedSkins do pcall(RemoveSkinFromTool, Tool) end
    SkinChanger.AppliedSkins = {}
    SkinChanger.KnifeData = {}
    SkinChanger.ToolRegistry = {}
    if Wallbang then
        if Wallbang.Connection then Wallbang.Connection:Disconnect() end
        Wallbang:Restore()
    end
    if RageStack then
        RageStack.RageActive = false
        RageStack.DoubleTapActive = false
    end
    if BulletDump then
        BulletDump.Firing = false
        BulletDump.Active = false
    end
    if AvatarSpoofer then
        AvatarSpoofer:Clear()
    end
    if AutoKill then AutoKill.Enabled = false end
    if InfiniteAmmo then InfiniteAmmo.Enabled = false end
end

_G.eclipse_unload = unloadEclipse

return eclipse
