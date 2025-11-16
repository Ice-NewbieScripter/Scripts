--// original script written by manymillerboy on roblox devforum
--// ported to shitsploits by scamnapse v3
task.wait(0.5)
local lights = {}
local TRASH = {}
local lumens = {}

local sundir = game.Lighting:GetSunDirection()
getgenv().gi = true
getgenv().intensity = 0.025
getgenv().suncolor = Color3.fromRGB(255,255,255)
getgenv().glow = true
getgenv().lglow = true
getgenv().polight = true
getgenv().splight = true
getgenv().sulight = true
local brightlimit = {Min = 0, Max = 10}
local rangelimit = {Min = 6, Max = 60}
getgenv().raymult = 1

local oldfograte = fograte

game.Lighting.LightingChanged:Connect(function()
	sundir = game.Lighting:GetSunDirection()
end)

local fogtimer = 0

function RunFog()
	if fogenabled == true then
		fogtimer = 10
	end
end

local function GetFace(Way: enum,Cframe: cframe)
	if Way == Enum.NormalId.Back then return -Cframe.LookVector end
	if Way == Enum.NormalId.Front then return Cframe.LookVector end
	if Way == Enum.NormalId.Left then return -Cframe.RightVector end
	if Way == Enum.NormalId.Right then return Cframe.RightVector end
	if Way == Enum.NormalId.Top then return Cframe.UpVector end
	if Way == Enum.NormalId.Bottom then return -Cframe.UpVector end
end

function CheckPart(part)
	if part:IsA("Part") then
		if part.Transparency > 0 or part.CastShadow == false then
			return true
		end
	end
end

function SendRayFromCamera(orig,direction,dt)
	local params = RaycastParams.new()
	params.FilterType = Enum.RaycastFilterType.Exclude
	params.FilterDescendantsInstances = {game.Players.LocalPlayer.Character}
	local ray = game.Workspace:Raycast(orig,direction*1000,params)
	
	if ray then
		local col = nil
		local bright = 0
		local passes = true
		local islava = false
		if ray.Instance:IsA("Terrain") then
			col = game.Workspace.Terrain:GetMaterialColor(ray.Material)
			if ray.Material == Enum.Material.CrackedLava and lglow == true then
				passes = false
				bright = intensity
				islava = true
			end
		elseif ray.Instance:IsA("BasePart") then
			col = ray.Instance.Color
			if ray.Material == Enum.Material.Neon and glow == true then
				passes = false
				bright = intensity
			end
		end
		
		local islight = false
		local baselight = nil
		local mainlight = nil
		if passes == true and gi == true then
			local sunray = game.Workspace:Raycast(ray.Position+ray.Normal*0.1,sundir*1000,params)
			if not sunray then
				bright = intensity
				col = Color3.new(col.R*suncolor.R,col.G*suncolor.G,col.B*suncolor.B)
			else
				local check = CheckPart(sunray.Instance)
				if check then
					bright = intensity
					col = Color3.new(col.R*sunray.Instance.Color.R*suncolor.R,col.G*sunray.Instance.Color.G*suncolor.G,col.B*sunray.Instance.Color.B*suncolor.B)
				end
			end
			for _, light in lights do
				if light then
					local p = light.Parent
					if ((light:IsA("PointLight") and polight == true) or (light:IsA("SpotLight") and splight == true) or (light:IsA("SurfaceLight") and sulight == true)) and p then
						if light.Enabled == true then
							local b = light.Parent
							if b:IsA("Attachment") then
								b = b.Parent.Parent
							end
							local pos = nil
							local cf = nil
							local pass = false
							if p:IsA("BasePart") then
								pass = true
								pos = p.Position
								cf = p.CFrame
							elseif p:IsA("Attachment") then
								pass = true
								pos = p.WorldPosition
								cf = p.WorldCFrame
							end
							local mag = (pos-ray.Position).Magnitude
							if mag <= light.Range and pass == true then
								local checked = true
								if light.Shadows == true then
									checked = false
									local ray = game.Workspace:Raycast(ray.Position+ray.Normal*0.1,(pos-(ray.Position+ray.Normal*0.1))*1.1,params)
									if ray then
										if ray.Instance == b then
											checked = true
										end
									end
								end
								if checked == true then
									if light:IsA("SpotLight") then
										checked = false
										local spotlightToPoint = (ray.Position-pos).Unit
										local dir = cf.LookVector
										if light.Face == "Front" then
											dir = cf.LookVector
										elseif light.Face == "Back" then
											dir = -cf.LookVector
										elseif light.Face == "Right" then
											dir = cf.RightVector
										elseif light.Face == "Left" then
											dir = -cf.RightVector
										elseif light.Face == "Top" then
											dir = cf.UpVector
										elseif light.Face == "Bottom" then
											dir = -cf.UpVector
										end
										local dotproduct = spotlightToPoint:Dot(dir)
										local requireddot = ((light.Angle/2)/90)
										if dotproduct >= requireddot then
											checked = true
										end
									elseif light:IsA("SurfaceLight") then
										checked = false
										local cam = p:FindFirstChildOfClass("Camera")
										if not cam then
											cam = Instance.new("Camera")
											cam.Parent = p
										end
										cam.CameraType = Enum.CameraType.Scriptable
										cam.FieldOfView = light.Angle
										cam.CFrame = CFrame.new(pos)
										local dir = GetFace(light.Face,cam.CFrame)
										cam.CFrame = CFrame.new(pos,pos+dir)
										local _, OnScreen = cam:WorldToScreenPoint(ray.Position)
										if OnScreen then
											checked = true
										end
										cam:Destroy()
									end
									if checked == true then
										islight = true
										if light then
											mainlight = light
										end
										if b then
											baselight = b
										end
										col = Color3.new(col.R*light.Color.R,col.G*light.Color.G,col.B*light.Color.B)
										if bright == 0 then
											bright = intensity*light.Brightness
										else
											bright *= light.Brightness
										end
									end
								end
							end
						end
					end
				end
			end
		end
		
		if ray.Instance.Transparency >= 1 then
			bright = 0
		end
		if bright > 0 then
			bright -= ray.Distance/10000
			local light = Instance.new("PointLight")
			local attach = Instance.new("Attachment")
			if islight == true and baselight ~= nil then
				attach.Parent = baselight
			else
				attach.Parent = ray.Instance
			end
			
			bright = math.clamp(bright,brightlimit.Min,brightlimit.Max)
			
			attach.WorldPosition = ray.Position+ray.Normal*0.1
			light:AddTag("DontCheck")
			light.Parent = attach
			light.Shadows = false
			light.Color = col
			light.Enabled = true
			light.Brightness = bright
			light.Range = math.clamp(ray.Distance/3,rangelimit.Min,rangelimit.Max)
			
			if islava == true then
				local emberchance = math.random(1,10)
				if emberchance == 1 then
					local ember = script.LavaEmber:Clone()
					ember.Parent = attach
					ember.Color = ColorSequence.new(col)
					ember:Emit(1)
				end
			end
			table.insert(TRASH,attach)
			local data = {
				Light = light,
				Attachment = attach,
				BasePosition = attach.WorldPosition,
				BaseBrightness = light.Brightness,
				BaseLight = mainlight,
				Events = {}
			}
			local function changeData()
				if data then
					if data.BaseLight ~= nil then
						if data.BaseLight.Enabled == false then
							data.Light.Brightness = 0
						else
							data.Light.Brightness = ((data.BaseLight.Range-(data.Attachment.WorldPosition-data.BasePosition).Magnitude)/data.BaseLight.Range)*data.BaseBrightness*data.BaseLight.Brightness
						end
					else
						data.Light.Brightness = ((data.Light.Range-(data.Attachment.WorldPosition-data.BasePosition).Magnitude)/data.Light.Range)*data.BaseBrightness
					end
				end
			end
			data.Events[1] = attach:GetPropertyChangedSignal("WorldCFrame"):Connect(changeData)
			if mainlight then
				data.Events[2] = mainlight:GetPropertyChangedSignal("Enabled"):Connect(changeData)
				data.Events[3] = mainlight:GetPropertyChangedSignal("Brightness"):Connect(changeData)
			end
			table.insert(lumens,data)
			task.delay(0.05/dt,function()
				table.remove(TRASH,table.find(TRASH,attach))
				for _, ev in data.Events do
					if ev then
						ev:Disconnect()
					end
				end
				table.remove(lumens,table.find(lumens,data))
				attach:Destroy()
			end)
		end
	end
end

local function RemoveLight(light)
	if table.find(lights,light) then
		table.remove(lights,table.find(lights,light))
	end
end

local function CheckAndAddLight(light)
	if light:IsA("PointLight") or light:IsA("SpotLight") or light:IsA("SurfaceLight") then
		if not light:HasTag("DontCheck") then
			table.insert(lights,light)
			local ev1 = nil
			local ev2 = nil
			ev1 = light.Destroying:Connect(function()
				RemoveLight(light)
				if ev1 then
					ev1:Disconnect()
				end
			end)
			ev2 = light:GetPropertyChangedSignal("Parent"):Connect(function()
				if not light:FindFirstAncestorOfClass("Workspace") then
					RemoveLight(light)
					if ev2 then
						ev2:Disconnect()
					end
				end
			end)
		end
	end
end

for _, light in game.Workspace:GetDescendants() do
	CheckAndAddLight(light)
end

game.Workspace.DescendantAdded:Connect(function(light)
	CheckAndAddLight(light)
end)

local toggle = false
local run = nil

if fogenabled == true then
	RunFog()
end

run = game:GetService("RunService").RenderStepped:Connect(function(dt)
	local cam = game.Workspace.CurrentCamera
	if cam then
		if gi == true or glow == true or lglow == true then
			if toggle == false then
				toggle = true
				for i = 1, math.floor(raymult/dt/2) do
					local y = math.random(0,cam.ViewportSize.Y)
					local x = math.random(0,cam.ViewportSize.X)
					local ray = cam:ViewportPointToRay(x,y,1000)
					SendRayFromCamera(cam.CFrame.Position,ray.Direction.Unit,
						dt*raymult
					)
				end
			else
				toggle = false
			end
		end
	end
end)

