processing
searchQuestion: msg 
	"returns user related question"
	| factor factors |
	factor := 0.2.
	factors := BTBotLanguageData questions collect: [ :q |
			self calculateLikelyFactor: q value message: msg.
		].
	factors max > factor 
		ifTrue: [ ^ searchQuestion := (BTBotLanguageData questions 
							at: (factors indexOf: factors max)) key ] "define questions"
		ifFalse: [ ^ searchQuestion := #unknown_message ] "default"
		
