start
startChatBot
	bot := DSBot new.
	bot token: self token.
	bot connect.

	self targetServer: 'some_other_test'.
	self channelsToOmit: {'general'}.
	"self channelsToListen: {'bot-test-channel'}."
	
	bot announcer 
		when: DSGatewayMessageAnnouncement
		do: [ :ann |
			self handleMessage: ann message. ].