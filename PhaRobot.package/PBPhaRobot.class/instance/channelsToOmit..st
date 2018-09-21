configuration
channelsToOmit: anArray
	^ omittedList := (bot servers named: self targetServer) flattenedChannels
		select: [ :e |  anArray anySatisfy: [ :el | el = e name ] ]
		thenCollect: #id
	