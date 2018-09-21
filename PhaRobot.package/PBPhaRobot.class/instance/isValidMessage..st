processing
isValidMessage: aDSmsg
	^ (aDSmsg author isNil 
		or: [(aDSmsg author isBot) 
			or:[aDSmsg content isNil 
				or: [aDSmsg content isEmpty]]]) not 
		and: [ self isChannelOmmited: aDSmsg channelId ]
		