# Webhook-Module
A simple roblox module that allows for sending messages from roblox to discord.

# Step 1
Get the Webhook Module and put it somewhere: https://www.roblox.com/library/9179250936/WebhookModule
Github link can be found here: https://github.com/P1uffy/Webhook-Module

# Step 2
Require the module from a script.
```lua
local webhook = require(PATH_TO_WEBHOOK_MODULE)
local url = "WEBHOOK_URL"
```
# Step 3
Create a webhook by editing a channel in your discord server, click "Integrations", then "Create Webhook". Customize your webhook to your liking. When you're done, copy the webhook url. **MAKE SURE NO ONE GETS THIS URL!!** If someone gets a hold of the url, they can send any message they want in the channel you set the webhook in. Then paste the url into where it says "WEBHOOK_URL" in the script.

# Step 4
Call the "send" or "embed" function depending on what you want to send. Put the "url" variable we made earlier as the first parameter.
```lua
webhook.send(url, message)
webhook.embed(url, title, message)
```
The webhook module comes with more customization to the embed function so you might want to take a look at the code of it.

# Uses
This could be used as many things. They can include...
- Suggestion Gui
- Bug Report Gui
- Moderation
