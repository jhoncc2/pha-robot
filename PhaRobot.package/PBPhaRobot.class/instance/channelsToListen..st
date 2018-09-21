configuration
channelsToListen: channelNames
	^ listeningList := (bot servers named: self targetServer) flattenedChannels
		select: [ :e |  channelNames anySatisfy: [ :el | el = e name ] ]
		thenCollect: #id