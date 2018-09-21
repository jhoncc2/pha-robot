processing
handleMessage: aDSmsg
	(self isValidMessage: aDSmsg ) ifFalse: [ ^ self yourself ].
	
	