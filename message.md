# message


Description
---
Message structure is used in client.getMessage and messageCreate messageUpdate events  

# Properties
* `string` id  
	id of the message  
* `string` channel_id  
id of the channel the message was sent in  
* `user` author  
the author of this message  
* `string` content  
contents of the message  
* `string` timestamp  
ISO8601 timestamp when this message was sent  
* `string` edited_timestamp  
ISO8601 timestamp when this message was edited (or nil if never)  
* `boolean` tts  
whether this was a TTS message  
* `boolean` mention_everyone  
whether this message mentions everyone  
* `table` mentions  
table of users specifically mentioned in the message  
* `table` mention_roles  
table of roles specifically mentioned in this message  
* `table` mention_channels  
table of channels specifically mentioned in this message  
* `table` attachments  
table of embed objects  
* `table` embeds  
table of embed objects  
* `table` reactions  
table of reaction objects  
* `boolean` pinned  
whether this message is pinned  
* `string` webhook_id  
if the message is generated by a webhook, this is the webhook's id  
* `integer` type  
type of message  
* `table` message_reference  
reference data sent with crossposted messages and replies  
* `message` referenced_message  
the message associated with the message_reference  

---
# Methods
# `reply`

# Arguments
* `string` `message` `embed` message  
* `function` callback  

---
# `edit`

# Arguments
* `string` `message` `embed` message  
* `function` callback  

---
# `delete`

# Arguments
* `function` callback  

---
# `pin`

# Arguments
* `function` callback  

---
# `unpin`

# Arguments
* `function` callback  

---
# `react`

# Arguments
* `string` `reaction` emoji  
* `function` callback  

---
# message


Description
---
Message constructor is used in client.sendMessage and client.sendMessageDM  


---
# Methods
# `setText`

# Arguments
* `string` text  

---
# `setEmbed`

# Arguments
* `embed` setEmbed  

---
# `setMessageReference`

# Arguments
* `string` guild_id  
* `string` message_id  

---