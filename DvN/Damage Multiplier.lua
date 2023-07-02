_G.multiplier = true
pcall(function()
local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
   local method = getnamecallmethod()
   local args = {...}

   if method == "FireServer" and tostring(self) == "VerifyHit" or tostring(self) == "VerifyThrowHit" then
       pcall(function()
       if _G.multiplier then
           for hit = 1,repeat do    
               self.FireServer(self, unpack(args))
           end
       else
       end    
       end)
end
   return namecall(self, table.unpack(args))
end)
end)
