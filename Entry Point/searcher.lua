function finder()
    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name =="ExteriorCam" or v.Name =="Microcam" or v.Name =="Tripwire" or v.Name =="Computer" or v.Name =="ShapedCharged" or v.Name =="C4" then
            local hl = Instance.new("Highlight", v)
        end
    end
end
finder() 
while true do
    finder() 
    wait(3)
end
