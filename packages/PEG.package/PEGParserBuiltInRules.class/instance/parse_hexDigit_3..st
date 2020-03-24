as yet unclassified
parse_hexDigit_3: t1 
	| t2 |
	t2 := string
				at: t1
				ifAbsent: [^ nil].
	^ ($A <= t2
			and: [t2 <= $F])
		ifTrue: [PEGNode
				newOn: #'_terminal'
				for: string
				from: t1
				to: t1 + 1
				children: {t2}]
		ifFalse: [self reportFailureOf: {$A. $F} atPos: t1.
			nil]