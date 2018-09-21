tests-processing
testCalculateLikelyFactorMessage
	| res |
	res := instance calculateLikelyFactor: 'some sentence' message: 'some sentence'.
	self assert: res equals: 1.
	
	res := instance calculateLikelyFactor: 'some sentence' message: 'hey there, some sentence'.
	self assert: res equals: 1/2.