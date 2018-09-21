processing
processAnswer: val
	val isString ifTrue: [ ^ val ].
	val isBlock ifTrue: [ ^ val value ]