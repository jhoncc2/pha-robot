processing
handleMessage: aDSmsg
	| queryDescriptor response |
	(self isValidMessage: aDSmsg ) ifFalse: [ ^ self yourself ].
	
	"save questions made before"
	"self logQuestionMessage: aDSmsg."
	"queryDescriptor := BTMessageProcessor instance processMessagePayload: aDSmsg."
	
	[ 	response := controller processMessage: aDSmsg.
			bot message message: response ; respondTo: aDSmsg.
			"response value do: [ :e | 
				bot message
					embedTitle: e key;
					embedDescription: e value;
					respondTo: aDSmsg. ]"
		] 
			on: BTErrorBase 
			do: [:e | 
				bot message
					embedDescription: e messageText;
					embedColor: Color orange;
					respondTo: aDSmsg.]. 