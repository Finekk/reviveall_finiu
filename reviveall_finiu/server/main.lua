
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)




TriggerEvent('es:addGroupCommand', 'reviveall', 'superadmin', function(source, args, user)

	TriggerClientEvent('reviveallplayer', source)

end, function(source, args, user)
  TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficient Permissions.")
end, {help = 'revive all player'})


TriggerEvent('es:addGroupCommand', 'healall', 'superadmin', function(source, args, user)

	TriggerClientEvent('healallplayer', source)

end, function(source, args, user)
  TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insufficient Permissions.")
end, {help = 'revive all player'})
------- Revive Player  


-------- Event -------------------

RegisterServerEvent('reviveallFinek:revive')
AddEventHandler('reviveallFinek:revive', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)


		TriggerClientEvent('Finek:revive', target)

end)

-----------------------------------------

