MG_SCP914 = MG_SCP914 or {}
MG_SCP914.Mode = "Rough"

hook.Add("MG_SCP914_ProcessOutput", "SCP914outputthings", function(ply)
	local outputTbl = MG_SCP914.SCP914Out
	for i, ent in ipairs(ents.FindInSphere(Vector(2750, -4767, 50), 100)) do
		local entClass = ent:GetClass()
	   	if entClass == "spawned_weapon" then
			local weaponClass = ent:GetWeaponClass()
			if not outputTbl[weaponClass] or not outputTbl[weaponClass][MG_SCP914.Mode] then return end
			local output = outputTbl[weaponClass][MG_SCP914.Mode]
			timer.Simple(0.1, function()
				local entity = ents.Create(output)
				if not entity:IsValid() then
					ErrorNoHalt("Invalid output entity (" .. output .. ") for " .. weaponClass .. " at " .. MG_SCP914.Mode .. "\n")
					return
				end
				entity:SetPos(ent:GetPos())
				if entity:IsWeapon() then
					entity:SetPos(Vector(2757, -4321, 50))
				end
				ent:Remove()
				entity:Spawn()
				ServerLog("[SCP914] Processed " .. ent:GetClass() .. " at " .. MG_SCP914.Mode .. "\n")
			end)
		else
			if not outputTbl[entClass] or not outputTbl[entClass][MG_SCP914.Mode] then return end
			local output = outputTbl[entClass][MG_SCP914.Mode]
			timer.Simple(0.1, function()
				local entity = ents.Create(output)
				if not entity:IsValid() then
					ErrorNoHalt("Invalid output entity (" .. output .. ") for " .. entClass .. " at " .. MG_SCP914.Mode .. "\n")
					return
				end
				if entity:IsWeapon() then
					entity:Remove()
					entity = ents.Create("spawned_weapon")
					entity:SetWeaponClass(output)
				end
				entity:SetPos(v:GetPos())
				ent:Remove()
				entity:Spawn()
				ServerLog("[SCP914] Processed " .. ent:GetClass() .. " at " .. MG_SCP914.Mode .. "\n")
			end)
		end
	end
end)
