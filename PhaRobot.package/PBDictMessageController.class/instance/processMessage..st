processing
processMessage: msgString
	| d rated maxRatedIndex |
	d := self data associations.
	rated := d collectWithIndex: [ :e | 
		self textProcessor rateData: e key withMsg: msgString ].
	maxRatedIndex := rated indexOf: rated max.
	
	^ self processAnswer: (d at: maxRatedIndex)