if SERVER then
    include("sv_scp914.lua")
    include("sv_config.lua")
end

concommand.Add( "mypos", function( ply )
	print(ply:GetPos())
end )