as yet unclassified
parse: string startingFrom: ruleName
	| parseMethodSignature |
	memoization := (1 to: string size) collect: [:index | IdentityDictionary new].
	rightmostFailure := PEGParserFailure newAt: 0.
	
	parseMethodSignature := ('parse_' , ruleName , ':atPos:') asSymbol.
	^ self perform: parseMethodSignature withArguments: {string . 1}