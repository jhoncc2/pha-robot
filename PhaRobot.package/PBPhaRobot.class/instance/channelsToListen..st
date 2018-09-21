configuration
channelsToListen: channelNames
	^ omittedList := (bot servers named: self targetServer) flattenedChannels
		reject: [ :e |  channelNames anySatisfy: [ :el | el = e name ] ]
		thenCollect: #id