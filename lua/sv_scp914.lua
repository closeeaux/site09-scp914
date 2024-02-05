MG_SCP914 = {} -- Dont touch
MG_SCP914.Mode = "Rough"

print("starting 914 script")

hook.Add("MG_SCP914_ProcessOutput", "SCP914outputthings", function(ply)
    local entities = ents.FindInSphere( Vector(2750.557373,-4767.234863,50.031250), 100 )
	
    for k, v in pairs( entities ) do
       	if v:GetClass() != "spawned_weapon" then
            if SCP914Out[v:GetClass()] != nil then
                    for key, value in pairs( SCP914Out[v:GetClass()]) do
                        print(MG_SCP914.Mode)
                            if key == MG_SCP914.Mode then
                                
                                timer.Simple(0.1, function()
                                    local entity = ents.Create( value )
                                    entity:SetPos(v:GetPos())
                                    if entity:IsWeapon() then 
                                        entity:Remove()
                                        local entity = ents.Create("spawned_weapon")
                                        entity:SetPos(v:GetPos())
                                        entity:SetWeaponClass("value")
                                        entity:Spawn()  
                                    else 
                                        entity:Spawn()
                                    end
                                    v:Remove()
                                    print("created " .. value .. " at " .. key)
                                end)

                            end
                            
                    end 
            end
        else
            weaponClass = v:GetWeaponClass()
            if SCP914Out[weaponClass] != nil then
                for key, value in pairs( SCP914Out[weaponClass]) do
                    print(MG_SCP914.Mode)
                        if key == MG_SCP914.Mode then
                            timer.Simple(0.1, function()
                                local entity = ents.Create( value )
                                entity:SetPos(v:GetPos())
                                if entity:IsWeapon() then 
                                    entity:SetPos(Vector(2757.665039,-4321.473145,50.031250))
                                    entity:Spawn()  
                                else 
                                    entity:Spawn()
                                end
                                v:Remove()
                                print("created " .. value .. " at " .. key)
                            end)
                        end
                        
                end 
            end
        end 
    end
end)
