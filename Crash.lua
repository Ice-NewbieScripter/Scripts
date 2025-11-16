--Crash Your Game

local model = Instance.new("Model")
model.Parent = workspace

local part = Instance.new("Part")
part.Parent = model
part.Position = Vector3.new(10, 0, 5)

task.wait(1)

model:MoveTo(Vector3.new(0, 0, 0))

task.wait(1)

repeat
  if part.Position == Vector3.new(0, 0, 0) then
    print("its 0, 0, 0")
  elseif part.Position ~= Vector3.new(0, 0, 0) then
    print("it's not 0, 0, 0")
    part.Anchored = true
    model:MoveTo(Vector3.new(0, 0, 0))
  end    
until
part.Position == Vector3.new(0, 0, 0)