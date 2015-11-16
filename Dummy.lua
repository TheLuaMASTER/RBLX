while true do 
target = game.Workspace.CoreSB -- Put your name here
target.archivable = true
c = target:Clone()
c.Parent = Workspace
c.Name = "CoreSB" -- The name of the clone you just made. You can change this if u want.
clonez = c.Name
c.Torso.CanCollide = false
c.Head.CanCollide = false
wait(.1)
end

