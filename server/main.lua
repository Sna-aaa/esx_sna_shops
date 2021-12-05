local ShopItems = {}

RegisterServerEvent('esx_shops:buyItem')
AddEventHandler('esx_shops:buyItem', function(itemName, amount, zone, store)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	amount = ESX.Math.Round(amount)

	if amount < 0 then
		print('esx_shops: ' .. xPlayer.identifier .. ' attempted to exploit the shop!')
		return
	end

	-- get price
	local price = 0
	local itemLabel = ''
	local stock = false

	for i=1, #Config.Zones[zone].Items, 1 do
		local item = Config.Zones[zone].Items[i]
		if item.name == itemName then
			price = item.price
			itemLabel = item.label
			stock = item.stockmax
			break
		end
	end

	price = price * amount
	-- can the player afford this item?
	if xPlayer.getMoney() >= price then
		-- can the player carry the said amount of x item?
		if xPlayer.canCarryItem(itemName, amount) then
			-- get Stock
			if stock ~= false then
				MySQL.Async.fetchAll('SELECT item, stock FROM shops WHERE store = @store AND item = @item', {
					['@store'] = store,
					['@item'] = itemName
				}, function(result)
					if result[1] then
						stock = result[1].stock
						if stock >= amount then
							xPlayer.removeMoney(price)
							xPlayer.addInventoryItem(itemName, amount)
							xPlayer.showNotification(_U('bought', amount, itemLabel, ESX.Math.GroupDigits(price)))
							stock = stock - amount
							MySQL.Async.execute('UPDATE shops SET stock = @stock WHERE store = @store AND item = @item', {
								['@store'] = store,
								['@item']      = itemName,
								['@stock']          = stock
							})
						end
					end
				end)
			end
		else
			xPlayer.showNotification(_U('player_cannot_hold'))
		end
	else
		local missingMoney = price - xPlayer.getMoney()
		xPlayer.showNotification(_U('not_enough', ESX.Math.GroupDigits(missingMoney)))
	end

end)

ESX.RegisterServerCallback('esx_shops:getStock', function(source, cb, shop)
	MySQL.Async.fetchAll('SELECT item, stock FROM shops WHERE store = @store', {
		['@store'] = shop
	}, function(result)
		cb(result)
	end)
end)


