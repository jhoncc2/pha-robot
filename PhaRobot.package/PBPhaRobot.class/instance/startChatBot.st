configuration
startChatBot
	bot := DSBot new.
	bot token: self token.
	bot connect.

	self targetServer: 'BatSignal-test'.
	self channelsToOmit: {'general'}.
	"self channelsToListen: {'bot-test-channel'}."
	"self channelsToListen:{}."
	
	bot announcer 
		when: DSGatewayMessageAnnouncement
		do: [ :ann |
			self handleMessage: ann message. ].