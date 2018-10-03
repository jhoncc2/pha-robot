processing
processMessage: aDSMessage
	| d rated maxRatedIndex |
	d := self data associations.
	rated := d collectWithIndex: [ :e :i | 
		self textProcessor rateData: e key withMsg: aDSMessage content ].
	
	rated := rated reject: #isZero.
	
	rated ifEmpty: [ BTUnknowQuestion new messageText: 'I cant understand what you are saying :('; signal ].
	
	maxRatedIndex := rated indexOf: rated max.
	
	^ self processAnswer: (d at: maxRatedIndex ) value