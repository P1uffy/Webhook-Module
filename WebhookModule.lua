local HttpService = game:GetService("HttpService")

local webhook = {}

function webhook.send(url, message)
	if url and message then
		local data = {
			["content"] = message
		}

		data = HttpService:JSONEncode(data)
		HttpService:PostAsync(url, data)
		return
	end
end

function webhook.embed(url, title, message, color, image, author)
	if url and title and message then
		local data = {
			["embeds"] = {{
				["title"] = title,
				["description"] = message
			}}
		}
		
		if color then
			data = {
				["embeds"] = {{
					["title"] = title,
					["description"] = message,
					["color"] = color
				}}
			}
			
			if image and author then
				data = {
					["embeds"] = {{
						["author"] = {
							["name"] = author,
							["url"] = image
						},
						["title"] = title,
						["description"] = message,
						["color"] = color
					}}
				}
			end
		end
		
		data = HttpService:JSONEncode(data)
		HttpService:PostAsync(url, data)
		return
	end
end

return webhook
