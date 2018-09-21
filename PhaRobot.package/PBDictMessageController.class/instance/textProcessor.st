processing
textProcessor
	^ textProcessor ifNil: [ textProcessor := self processorClass new ]