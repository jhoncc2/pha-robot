start
startChatBot
	bot := DSBot new.
	bot token: self token.
	bot connect.

	self targetServer: 'some_other_test'.
	self channelsToOmit: {'general'}.
	"self channelsToListen: {'bot-test-channel'}."
	
	controller := PBDictMessageController new
						textProcessor: PBFrequencyWord new; 
						data: { 
							(#('hello' 'hi') -> 'hello, I am a bot').
							(#('bonjour') -> 'Salut je suis un robot').
							(#('hola') -> 'Hola, soy un robot')
						 } asDictionary;
						yourself.
	
	bot announcer 
		when: DSGatewayMessageAnnouncement
		do: [ :ann |
			self handleMessage: ann message. ].