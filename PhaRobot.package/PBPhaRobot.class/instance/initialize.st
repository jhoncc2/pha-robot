processing
initialize
	controller := PBDictMessageController new
						textProcessor: PBFrequencyWord new; 
						data: { (#('hello') -> 'Hola, I am a bot') } asDictionary;
						yourself.
	
	