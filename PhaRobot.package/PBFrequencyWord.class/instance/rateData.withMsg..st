as yet unclassified
rateData: localData withMsg: msgText
	^ (localData 
		collect: [ :e | self calculateLikelyFactor: e message: msgText ]) max
		